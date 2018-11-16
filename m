Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4572EA5E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 12:43:35 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D42B9786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 12:43:34 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <alpine.DEB.2.21.1811150544090.2354@hadrien>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225760492.2499188.14152986544451112930.stgit@dwillia2-desk3.amr.corp.intel.com>
	<alpine.DEB.2.21.1811142146230.9620@hadrien>
	<CAMuHMdVmvCOX6gF0BskQ1NBUpdMZHSBQXpxkx085B9ZKGm0wiA@mail.gmail.com>
	<alpine.DEB.2.21.1811150544090.2354@hadrien>
Date: Fri, 16 Nov 2018 14:44:07 +0200
Message-ID: <878t1tgpk8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
	vishal.l.verma@intel.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	stfrench@microsoft.com, Greg KH <gregkh@linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [RFC PATCH 2/3] MAINTAINERS,
	Handbook: Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 15 Nov 2018, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 15 Nov 2018, Geert Uytterhoeven wrote:
>
>> Hi Julia,
>>
>> On Thu, Nov 15, 2018 at 6:48 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > How about patch subject lines?  What is the formula that should be used to
>> > transform the name(s) of the affected file(s) into an appropriate suject
>> > line?
>>
>> Automating that may be difficult.
>> I always use "git log --oneline", and try to derive something sane
>> from its output.
>
> Yes, I do likewise.  But there may be some subsystems for which it would
> be possible to come up with a more specific policy.  The advantage of what
> is proposed here is that it is not necessary to come up with a single
> formula that works everywhere.  Even a description in English could be
> helpful.

I quickly cooked up this script to produce the top-5 commit prefixes for
the given files over the arbitrary last 200 commits. It'll give you a
pretty good idea if you're even close.

---
#!/bin/sh
# usage: subject-prefix FILE [...]
# show top 5 subject prefixes for FILEs

git log --format=%s -n 200 -- "$@" |\
	grep -v "^Merge " |\
	sed 's/\(.*\):.*/\1/' |\
	sort | uniq -c | sort -nr | sed 's/ *[0-9]\+ //' |\
	head -n 5
---

Someone who knows perl could turn that into a checkpatch check: See if
the patch subject prefix is one of the top-5 for all files changed by
the patch, and ask the user to double check if it isn't. Or some
heuristics thereof.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
