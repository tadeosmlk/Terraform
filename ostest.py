import os


list_of_ls = os.popen("echo Y|gcloud auth login --cred-file=/Users/i548868/Documents/tf/fw_policies/scripts/DC-automation/prod/prodin/terraform/cred.json&&  gcloud iam service-accounts list --project sap-ariba-prod-in-webch --format \"json\"|jq .[].email").read() # .split('\n')
print(list_of_ls)


#internal-cs-vip-site1
#web-cs-site1
#app-site1
#highspeed-cs-site1
#hadoop-cs-site1
#arches-site1
#clamav-site1
#tower
 #occm
 #ilb ip for influx
 #copyhost
 #copyhost

iptosubnet =  {
 
"sap-ariba-prod-in": "{{hostproject}}",
"asia-south1": "{{region}}",
"10.211.1.44/32":  "{{tower}}",  
"10.211.1.77/32": "{{occm}}",  
"10.211.1.83/32": "{{ilbIP}}",  
"10.211.1.35/32": "{{copyhost1}}",   
"10.211.1.32/32": "{{copyhost2}}",   
"10.211.6.0/23": "\"{{internal_ms_vip_site1}}\",\"{{web_ms_site1}}\",\"{{ch_site1}}\",\"{{highspeed_ms_site1}}\", \"{{hadoop_ms_site1}}\",\"{{ncv_site1}}\", \"{{aj_site1}}\"", 
"10.211.3.131": "{{f5webcs}}",
"10.211.1.34/32": "{{mon2}}",
"10.211.1.33/32": "{{mon1}}",
"\"10.211.6.0/24\",\"10.211.7.0/24\"": "\"{{internal_ms_vip_site1}}\",\"{{web_ms_site1}}\",\"{{ch_site1}}\",\"{{highspeed_ms_site1}}\", \"{{hadoop_ms_site1}}\",\"{{ncv_site1}}\", \"{{aj_site1}}\"",
"\"10.211.1.34\",\"10.211.1.33\"": "\"{{common_site1}}\"",
"\"10.211.6.0/24\",\"10.211.7.0/25\"": "\"{{internal_ms_vip_site1}}\",\"{{web_ms_site1}}\",\"{{ch_site1}}\",\"{{highspeed_ms_site1}}\", \"{{hadoop_ms_site1}}\",\"{{ncv_site1}}\", \"{{aj_site1}}\"",
"\"10.211.2.0/23\",\"10.211.4.0/24\"": "\"{{internal_cs_vip_site1}}\", \"{{web_cs_site1}}\", \"{{app_site1}}\", \"{{highspeed_cs_site1}}\", \"{{hadoop_cs_site1}}\", \"{{arches_site1}}\", \"{{clamav_site1}}\"",
"10.211.0.0/27": "{{dmz_cs_site1}}",
 "10.211.0.128/26": "{{db_cs_site1}}",
 "10.211.0.192/26": "{{hana_cs_vip_site1}}",
 "10.211.3.0/25": "{{internal_cs_vip_site1}}",
 "10.211.3.128/26": "{{web_cs_site1}}",
 "10.211.2.0/24": "{{app_site1}}",
 "10.211.3.192/26": "{{highspeed_cs_site1}}",
 "10.211.4.0/25": "{{hadoop_cs_site1}}",
 "10.211.4.128/26": "{{arches_site1}}",
 "10.211.4.192/27": "{{clamav_site1}}",
 "10.211.1.0/25": "{{common_site1}}",
 "10.211.1.128/27": "{{mgmt_site1}}",
 "10.211.1.192/26": "{{kts_site1}}",
 "10.211.1.160/28": "{{actifio_sky_site1}}",
 "10.211.5.0/27": "{{dmz_ms_site1}}",
 "10.211.5.128/26": "{{db_ms_site1}}",
 "10.211.5.192/26": "{{hana_ms_vip_site1}}",
 "10.211.6.64/26": "{{internal_ms_vip_site1}}",
 "10.211.6.128/27": "{{web_ms_site1}}",
 "10.211.6.0/26": "{{ch_site1}}",
 "10.211.6.192/26": "{{highspeed_ms_site1}}",
 "10.211.7.0/27": "{{hadoop_ms_site1}}",
 "10.211.7.32/27": "{{ncv_site1}}",
 "10.211.7.64/28": "{{aj_site1}}",
 "10.163.72.0/26": "{{cvo_ha_site1}}",
 "10.163.72.64/26": "{{cvo_cluster_site1}}",
 "10.163.72.128/26": "{{cvo_rep_site1}}",
 "10.211.0.0/21": "{{dc_ip_range}}" }
for x in list_of_ls:
  print(x)
dest_path="/Users/i548868/Documents/tf/fw_policies/scripts/DC-automation/utils/python/template/network/global-fw-policy"
src_path="/Users/i548868/git/DC-automation-terraform-gcp-prod-v2/prod/prodin/site1/network/global-fw-policy"

for root, _, files in os.walk("/Users/i548868/git/DC-automation-terraform-gcp-prod-v2/prod/prodin/site1/network/global-fw-policy"):
   for file in files:
     file_path = os.path.join(root, file)
     with open(file_path, 'r') as f:
       #print(file_path)
       new_path = file_path.replace(src_path, "") #- src_path
       print(new_path)
       os.makedirs(os.path.dirname(dest_path + new_path.replace("prodin.tfvars", "")), exist_ok=True)
       #with open("prodin.tfvars", "r") as f:
       with open(dest_path + new_path.replace("prodin.tfvars", "tfvars.j2"), "w") as out:
          lines = f.readlines()
          for line in lines:
            liner = line
            for ip in iptosubnet:
              liner = liner.replace(ip, iptosubnet[ip]).replace("\"\"{", "\"{").replace("}\"\"", "}\"")          
        
            out.writelines(liner)  

#print(ind)
