from WMCore.Configuration import Configuration
config = Configuration()
config.section_("General")
config.section_("JobType")
config.section_("Data")
config.section_("Site")
config.Data.publication=False
config.Site.storageSite= 'T2_IT_Pisa'
config.Site.whitelist= ['T2_IT_Pisa', 'T1_IT_CNAF', 'T2_IT_Legnaro']
config.JobType.psetName='pset.py'
config.General.transferOutputs = False
config.General.requestName = 'test_felice'
config.JobType.allowUndistributedCMSSW = True
config.JobType.scriptExe = 'cmsfolding.sh'
config.JobType.numCores = 4
config.JobType.pluginName = 'PrivateMC'
config.Data.totalUnits=100
config.Data.splitting = 'EventBased'
config.Data.unitsPerJob = 10
NJOBS = 10
config.Data.totalUnits = config.Data.unitsPerJob * NJOBS
