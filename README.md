EagleEye
=========
A web-based diagnostics console for configuring lightweight tests on nodes and arbitrary service endpoints. 

#### Agentless Monitors
EagleEye is 100% agentless. Simply use the console to configure tests for a variety of nodes and application endpoints, such as virtual IPs, web and app servers, databases, web services, even linux processes and file system resources.
#####Supported Tests
- Ping (native)   
- Http Get        
- Http Put        
- Redis ping      
- Mongo ping      
- RDBMS connect   
- Process Stat    
- File System (check files, folder, mounts)


## Diagnostics Web Console

#### Control Panel
Select the target environment, execute diagnostics, done; results are updated in real-time:
<p>
<a href="http://www.nextideapartners.com/site/images/git/panel.png"><img src="http://www.nextideapartners.com/site/images/git/panel.png" /></a>
<p>

#### Graphical Reporting
Graphical reporting of node health for quickly identifying problems:
<p>
<a href="http://www.nextideapartners.com/site/images/git/diag1.png">
  <img src="http://www.nextideapartners.com/site/images/git/diag1.png" width="600px"/>
</a>
<p>


#### Interactive Results
Get detailed test results; re-execute node tests using 'Test Again' button:
<p>
<a href="http://www.nextideapartners.com/site/images/git/results1.png">
  <img src="http://www.nextideapartners.com/site/images/git/results1.png" width="400px"/>
</a>
<p>

#### Remote Logs
EagleEye supports remote log file viewing and searching (to enable, configure SSH auth under Team settings).
<p>
<a href="http://www.nextideapartners.com/site/images/git/logs2.png">
  <img src="http://www.nextideapartners.com/site/images/git/logs2.png"/>
</a>
<p>

#### Topology View
Navigate node configuration using topology view:
<p>
<a href="http://www.nextideapartners.com/site/images/git/topo1.png">
  <img src="http://www.nextideapartners.com/site/images/git/topo1.png"/>
</a>
<p>

#### Custom Tests
Need a custom test? Just extend the framework:
```groovy
class MyTest extends AbstractDiagnostic {

   TestResult runDiagnostic(nodeConfig, testConfig, options) {
      attemptDiagnostic(options) { ->
         def result
         try{                     
            //check some service, database, etc
            result = new TestResultPassed("Looking good!")
            
         }catch(Exception e){
            log.error(e.getMessage(), e)
            result = new TestResultFailed(e.getMessage())            
         }
         return result
      }
   }
}
```
