Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E22AA12E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 21:00:56 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8AEF11AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 21:00:56 +0000 (UTC)
Message-ID: <55E61200.8000706@oracle.com>
Date: Tue, 01 Sep 2015 17:00:48 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>, Jani Nikula <jani.nikula@intel.com>
References: <CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<1436871795.2445.8.camel@HansenPartnership.com>
	<874mje5y13.fsf@intel.com> <20150901205235.GA7344@kroah.com>
In-Reply-To: <20150901205235.GA7344@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/01/2015 04:52 PM, Greg KH wrote:
>> I'm wondering if people would think it worthwhile to have a
>> > collaborative effort of annotating commits using git notes, both
>> > automatically and manually. The manual annotations might be things like,
>> > "Cc: stable", "whoops, this was a bad idea for stable", or "this also
>> > needs commit foo in stable". Of course, with more structure, but you get
>> > the idea.
> git notes are a pain to propagate around, so while I like the idea of
> this, I don't know how well the proposed solution would work.

I agree, the way we work right now doesn't really help with collaboration between
us when working on multiple stable trees.

I do have a plan in mind to create a "standard" set of scripts (rather than each
using his own), where sharing of this metadata could be scripted in the background
and used transparently without having to deal with notes/note conflicts/etc.

However, we all do things a bit differently, so that's one of the reasons I think
the -stable workshow will be useful: we could figure out a common base and start
working from there.

In the future, it would be interesting to get distro kernel maintainers into
this mix as well...


Thanks,
Sasha
