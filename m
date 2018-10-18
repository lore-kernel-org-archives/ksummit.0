Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55EBEB2B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Oct 2018 19:22:28 +0000 (UTC)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03E00102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Oct 2018 19:22:27 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f18-v6so14652604pgv.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Oct 2018 12:22:27 -0700 (PDT)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <1539701820.2805.6.camel@HansenPartnership.com>
	<1539701896.2805.7.camel@HansenPartnership.com>
	<e332116b-62e8-9930-c263-d022edb5828e@gmail.com>
	<1539744091.2805.108.camel@HansenPartnership.com>
	<16a20416-0045-dfe6-d937-63f2f0cff269@gmail.com>
	<1539803331.3769.62.camel@HansenPartnership.com>
	<b056cdc3-29de-b6c8-b2a7-67b93b0fd730@gmail.com>
	<1539874609.2845.5.camel@HansenPartnership.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <b9f5376f-d8e8-bfe5-d27e-14c26d4859b8@gmail.com>
Date: Thu, 18 Oct 2018 12:22:25 -0700
MIME-Version: 1.0
In-Reply-To: <1539874609.2845.5.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH v3 1/3] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/18/18 07:56, James Bottomley wrote:
> On Wed, 2018-10-17 at 12:53 -0700, Frank Rowand wrote:
>> On 10/17/18 12:08, James Bottomley wrote:
> [...]
>>>> Trying to understand how you are understanding my comment vs what
>>>> I intended to communicate, it seems to me that you are focused on
>>>> the "where allowed" and I am focused on the "which email
>>>> addresses".
>>>>
>>>> More clear?  Or am I still not communicating well enough?
>>>
>>> I think the crux of the disagreement is that you think the carve
>>> out equates to a permission which is not specific enough and I
>>> think it
>>
>> Nope.  That is a big place where I was not transferring my thoughts
>> to clear communication.  I agree that what I wrote should have been
>> written in terms of carve out instead of permission.
>>
>>
>>> doesn't equate to a permission at all, which is why there's no need
>>> to make it more explicit.  Is that a fair characterisation?
>>
>> Nope.  My concern is "which email addresses".
> 
> The idea here was because it's a carve out that doesn't give permission
> and because the permission is ruled by the project contribution
> documents, the carve out should be broad enough to cover anything they
> might say hence "email addresses not ordinarily collected by the
> project" are still included as unacceptable behaviour.
> 
> Perhaps if you propose the wording you'd like to see it would help
> because there still looks to be some subtlety I'm not getting.


>From the beginning of the thread:

  > @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants include:
  >  * Trolling, insulting/derogatory comments, and personal or political attacks
  >  * Public or private harassment
  >  * Publishing others’ private information, such as a physical or electronic
  > -  address, without explicit permission
  > +  address not ordinarily collected by the project, without explicit permission
  >  * Other conduct which could reasonably be considered inappropriate in a
  >    professional setting


Alternative (and I'm sure someone else can probably clean this up a little bit):

+ address that has been provided in a public space for the project, without explicit permission


See you in Edinburgh,

-Frank


> 
> James
> 
> 
> 
> 
