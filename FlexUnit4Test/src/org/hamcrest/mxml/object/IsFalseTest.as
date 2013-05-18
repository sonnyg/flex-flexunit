/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.hamcrest.mxml.object
{
  import org.hamcrest.mxml.AbstractMXMLMatcherTestCase;

  public class IsFalseTest extends AbstractMXMLMatcherTestCase
  {
    private var matcher:IsFalse;
    
    [Before]
    public function createMatcher():void 
    {
      matcher = new IsFalse();
    }
    
    [Test]
    public function hasDescription():void 
    {
      assertDescription("is false", matcher);
    }
    
    [Test]
    public function matchedIsFalseIfTargetMatches():void 
    {
      matcher.target = false;
      
      assertMatched("should match false", matcher);
    }
    
    [Test]
    public function matchedIsFalseIfTargetDoesNotMatch():void 
    {
      matcher.target = true;
      
      assertNotMatched("should not match true", matcher);
    }
    
    [Test]
    public function mismatchDescriptionIsNullIfTargetMatched():void 
    {
      matcher.target = false;
      
      assertMatchedMismatchDescription(matcher);
    }
    
    [Test]
    public function mismatchDescriptionIsSetIfTargetDoesNotMatch():void 
    {
      matcher.target = true;
      
      assertMismatchDescription("was <true>", matcher);
    }
  }
}