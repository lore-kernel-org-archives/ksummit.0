Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4B358B65
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Nov 2018 07:28:19 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDB855D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Nov 2018 07:28:17 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@lip6.fr>,
	Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <f08820b05467cc95cc195a2639595c0274c95d69.camel@perches.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225760492.2499188.14152986544451112930.stgit@dwillia2-desk3.amr.corp.intel.com>
	<alpine.DEB.2.21.1811142146230.9620@hadrien>
	<CAMuHMdVmvCOX6gF0BskQ1NBUpdMZHSBQXpxkx085B9ZKGm0wiA@mail.gmail.com>
	<alpine.DEB.2.21.1811150544090.2354@hadrien>
	<878t1tgpk8.fsf@intel.com>
	<f08820b05467cc95cc195a2639595c0274c95d69.camel@perches.com>
Date: Tue, 20 Nov 2018 09:28:46 +0200
Message-ID: <875zwsgqc1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
	vishal.l.verma@intel.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, Greg KH <gregkh@linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	stfrench@microsoft.com, "Tobin C. Harding" <me@tobin.cc>
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

On Fri, 16 Nov 2018, Joe Perches <joe@perches.com> wrote:
> On Fri, 2018-11-16 at 14:44 +0200, Jani Nikula wrote:
>> I quickly cooked up this script to produce the top-5 commit prefixes for
>> the given files over the arbitrary last 200 commits. It'll give you a
>> pretty good idea if you're even close.
>> 
>> ---
>> #!/bin/sh
>> # usage: subject-prefix FILE [...]
>> # show top 5 subject prefixes for FILEs
>> 
>> git log --format=%s -n 200 -- "$@" |\
>> 	grep -v "^Merge " |\
>> 	sed 's/\(.*\):.*/\1/' |\
>> 	sort | uniq -c | sort -nr | sed 's/ *[0-9]\+ //' |\
>> 	head -n 5
>> ---
>> 
>> Someone who knows perl could turn that into a checkpatch check: See if
>> the patch subject prefix is one of the top-5 for all files changed by
>> the patch, and ask the user to double check if it isn't. Or some
>> heuristics thereof.
>
> This won't work when a patch contains multiple files
> from different paths, or even multiple files from a
> single driver.

*shrug*

You can give it multiple files as argument, and it'll give you an
approximation of what the prefix could be, whether you're way off or
not. Close enough at least for the single driver case. Obviously not
perfect, but hey, it took me all of five minutes to write that. ;)

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
