Return-Path: <sboyd@codeaurora.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85BD3722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 01:29:53 +0000 (UTC)
Received: from smtp.codeaurora.org (smtp.codeaurora.org [198.145.29.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 27877120
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 01:29:53 +0000 (UTC)
To: Rob Herring <robherring2@gmail.com>, "Bird, Timothy" <Tim.Bird@am.sony.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<1469533716.120686.281.camel@infradead.org>
	<alpine.DEB.2.10.1607271439250.3117@hadrien>
	<1469625916.27356.18.camel@HansenPartnership.com>
	<1469626423.120686.408.camel@infradead.org>
	<ECADFF3FD767C149AD96A924E7EA6EAF053B96B4@USCULXMSG02.am.sony.com>
	<CAL_Jsq+dodMDAS4M=CZxjbB5gU7+qUT0XEKgeDQeGN_u4SYkwg@mail.gmail.com>
From: Stephen Boyd <sboyd@codeaurora.org>
Message-ID: <9cd47df8-a122-228d-4be5-9c08cb608139@codeaurora.org>
Date: Thu, 11 Aug 2016 18:29:51 -0700
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+dodMDAS4M=CZxjbB5gU7+qUT0XEKgeDQeGN_u4SYkwg@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/01/2016 03:17 PM, Rob Herring wrote:
> On Wed, Jul 27, 2016 at 12:21 PM, Bird, Timothy <Tim.Bird@am.sony.com> wrote:
>>
>> It might be useful to have a list of possible errno generation points, for a particular routine,
>> to make it easier to find the origin of a problem.  Sometimes when you're unfamiliar with
>> some bit of code, manually walking back through the call chain in the source is a hassle.
>> I'm reminded of that trick where someone (I don't recall who) embedded the line number
>> in the errno.
> I'd be interested if you could find what you are referring to. 

Hugh Dickins:

#undef EINVAL
#define EINVAL __LINE__

https://lwn.net/Articles/614446/

Although it may not work well for error pointers as Linus stated in the
follow up mail.

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
