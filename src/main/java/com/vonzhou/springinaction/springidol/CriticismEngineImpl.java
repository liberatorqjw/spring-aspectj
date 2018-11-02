package com.vonzhou.springinaction.springidol;

/**
 * @Author: Qinjiawei
 * @Description
 * @Date: Created in 下午5:11  18-10-30
 */
public class CriticismEngineImpl implements CriticismEngine {

    public CriticismEngineImpl(){

    }
    // injected
     private String[] criticismPool;


      public String getCriticism() {
                 int i = (int) (Math.random() * criticismPool.length);
                 return criticismPool[i];
           }

          public void setCriticismPool(String[] criticismPool) {
              this.criticismPool = criticismPool;
             }
}
