Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C18CE486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 09:48:38 +0000 (UTC)
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC89F1D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 09:48:37 +0000 (UTC)
Received: by mail-pa0-f41.google.com with SMTP id pp5so20470152pac.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 02:48:37 -0700 (PDT)
To: Greg KH <greg@kroah.com>
References: <1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<578635F6.9040601@linaro.org> <20160714011905.GA20986@kroah.com>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57875FF1.7020206@linaro.org>
Date: Thu, 14 Jul 2016 18:48:33 +0900
MIME-Version: 1.0
In-Reply-To: <20160714011905.GA20986@kroah.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 07/14/2016 10:19 AM, Greg KH wrote:
> On Wed, Jul 13, 2016 at 09:37:10PM +0900, Alex Shi wrote:
>>
>> On 07/13/2016 06:07 PM, Greg KH wrote:
>>> On Wed, Jul 13, 2016 at 01:48:15PM +0900, Alex Shi wrote:
>>>> I am thinking if it's possible to share an basic tree which include some
>>>> widely wanted backporting features. That could share the testing and review,
>>>> then will reduce bugs much more.
>>> Like LTSI already does today?  :)
>> It looks we share some basic ideas on backporting part. But industry need
>> much more backporting features. and new features which out of upstream
>> aren't started from here, since it's a upstream quality without more eyes in
>> community.
> I have no idea what you mean by this.  Please give specific examples of
> what you have problems with.

The industry need much more features on LTS kernel for their product.
Like on linaro stable kernel 4.1, we backported PCIe of arm64, opp v2, 
writeback cgroup... 11 features on that. All of them are come from arm, 
hisilicon, QC, zte etc.

And in fact, hosting new features which target on upstream kernel isn't 
a good idea, since no much upstream guys like to look into this tree or 
do testing on this tree.

So looks like to share more backporting instead of upstream target 
feature could fit more industry needs.
> thanks,
>
> greg k-h
