Return-Path: <roberto.tyley@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6D6FBCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:36:00 +0000 (UTC)
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 40B45F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:36:00 +0000 (UTC)
Received: by iecvh10 with SMTP id vh10so203031460iec.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 12:35:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150710174940.GN111846@vmdeb7>
References: <2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
	<20150710.193255.181692772319686216.chriscool@tuxfamily.org>
	<20150710174940.GN111846@vmdeb7>
Date: Fri, 10 Jul 2015 20:35:59 +0100
Message-ID: <CAFY1edYpguzHkLuGSAVqUN_UXYvYrve0xB+hfx__P1Xg4PgJYQ@mail.gmail.com>
From: Roberto Tyley <roberto.tyley@gmail.com>
To: Darren Hart <dvhart@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: Roberto Tyley <robertotyley@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org, jason@lakedaemon.net
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

It would be great to turn on submitGit for development of the Linux
Kernel. Just to clarify, submitGit is a bridge for sending GitHub pull
requests on https://github.com/git/git to git@vger.kernel.org as
correctly formatted emails

I've never submitted a patch to the kernel, but I understand there are
many development trees and corresponding maintainers/mailing lists. It
would be an interesting task to teach submitGit _where_ a patch should
go - and we would need GitHub repos which mirrored the maintainer
trees in order for people to open good pull requests against them (I'm
assuming it would be wrong for people to just open pull requests
against https://github.com/torvalds/linux/).

This script looks interesting:
https://github.com/torvalds/linux/blob/master/scripts/get_maintainer.pl

I'd be interested to hear if anyone would like to try out submitGit
for the kernel, and has any further advice.

Roberto



On 10 July 2015 at 18:49, Darren Hart <dvhart@infradead.org> wrote:
> On Fri, Jul 10, 2015 at 07:32:55PM +0200, Christian Couder wrote:
>> From: Steven Rostedt <rostedt@goodmis.org>
>> Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers, Maintainers, Hobbyists)
>> Date: Fri, 10 Jul 2015 11:44:09 -0400
>>
>> > On Thu, 9 Jul 2015 12:37:18 -0700
>> > Darren Hart <dvhart@infradead.org> wrote:
>> >
>> >> I've come to believe that this is one of many side effects of our dependency on
>> >> a completely free form mechanism for the management of our patches, a mechanism
>> >> which is becoming harder and harder to setup "correctly" with modern tooling
>> >> (since the industry is killing "real email").
>> >>
>> >> I spend a highly disproportionate amount of my time, relative to measurable
>> >> quality impact to the kernel, going over the nuances of submitting patches.
>> >>
>> >> 1) Must have a complete commit message
>> >> 2) DCO goes above the ---
>> >> 3) Include a patch changelog, do so below ---
>> >> 4) Cc maintainers :-)
>> >> 5) Checkpatch... checkpatch... checkpatch...
>> >
>> > Ug, don't emphasize checkpatch. I see people making patches uglier due
>> > to it. I have an old version of checkpatch that I sometimes run, but
>> > the new version, IMHO, has more noise than signal.
>> >
>> >> 6) Compiler warnings
>> >> 7) CodingStyle :-)
>> >> 8) Use ascii or utf8 character encodings
>> >>
>> >
>> >
>> >> Looking forward a bit, I would love to see some tooling in place for people to
>> >> submit patches either via a web form (which eliminates all the email tooling for
>> >> submitting patches - which is where the formatting is especially critical) or
>> >> through one of the more managed git systems, like gerrit, etc.
>> >
>> > You mean like a web page that has a bunch of entries (like submitting a
>> > paper to a LF conference), and you need to fill out.
>>
>> To send patch emails created from git repos on GitHub to the Git
>> mailing list, there is now submitGit:
>>
>> https://submitgit.herokuapp.com/
>> https://github.com/rtyley/submitgit
>>
>> Maybe Roberto, its author (cced), could be convince to do something
>> for the kernel?
>
> Something along those lines would be nice, yes. I think a lot of people would
> find something like this which enforces the "mechanical" rules to be very
> useful.
>
> --
> Darren Hart
> Intel Open Source Technology Center
