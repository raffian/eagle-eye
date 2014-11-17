eagle-eye
=========
A web-based diagnostics console for configuring lightweight tests on nodes and arbitrary application services. Health and availability info is displayed in real-time as it becomes avialable upon executing a test battery.

#### Agentless Monitors
Eagle-eye is 100% agentless. Use the console to configure lightweight tests for pretty much anything with a heartbeat: virtual nodes, web/app servers, databases, web services, even linux processes and file system resources.

Supported Tests |
--------------- |
Ping (native)   |
Http Get        |
Http Put        |
Redis ping      |
Mongo ping      |
RDBMS connect   |
Process Stat    |
File System     |

#### Custom Tests

```groovy
class MyTest extends AbstractDiagnostic {

   TestResult runDiagnostic(nodeConfig, testConfig, options) {
      
      attemptDiagnostic(options) { ->
         def result
         try{                     
            //check some service, database, etc
            result = new TestResultPassed("Looking good")
            
         }catch(Exception e){
            log.error(e.getMessage(), e)
            result =  new TestResultFailed(e.getMessage())            
         }
         return result
      }
   }
}
```

#### Diagnostics Control Panel
Target specific operational zones for diagnostics reporting using the control panel:

<a href="http://i.imgur.com/EiHcTaA.png"><img src="http://i.imgur.com/EiHcTaA.png" align="left" width="400" ></a>
