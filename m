Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16C7ABA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 08:53:05 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 15CD21A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 08:53:03 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
Date: Fri, 4 Aug 2017 10:53:01 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/04/2017 10:42 AM, Jiri Kosina wrote:
> On Thu, 3 Aug 2017, Theodore Ts'o wrote:
> 
>> One way that we could try to make things better is by having some kind
>> of semi-automated system which monitors changes in include/uapi/*.h in
>> linux-next.  
> 
> It's unfortunately just uapi though, and for sysfs it's a bit more 
> difficult to define a pathname pattern to watch for.
> 
Yeah; that has been my main headache with the kABI stuff.
Nowadays sysfs is considered part of the kABI, but we have no way of
tracking it; we basically rely on people filling out some off-side
documentation, and hope they're not missing anything.
And we don't mess up when generating patches :-)

That, and the infamous 'internal symbol' discussion.
(Meaning that we only can declare symbols as exported, even though they
really should only be visible to that driver, not anything else)
Which leads to tons of false positives, and discussions about why this
really is meant to be an internal symbol.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
