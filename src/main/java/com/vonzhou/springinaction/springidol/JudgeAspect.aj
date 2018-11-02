package com.vonzhou.springinaction.springidol;

/**
 * @Author: Qinjiawei
 * @Description
 * @Date: Created in 下午5:07  18-10-30
 */
public aspect JudgeAspect {
    public JudgeAspect() {

   }

 //injected
 private CriticismEngine criticismEngineDemo;
 public void setCriticismEngine(CriticismEngine criticismEngine) {
  this.criticismEngineDemo = criticismEngine;
 }

 pointcut performance():execution(* perform(..));

    after() returning() :performance() {
    System.out.println(criticismEngineDemo.getCriticism());
    }


}
