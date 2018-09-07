Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ADF73DB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 03:43:22 +0000 (UTC)
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31CA2623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 03:43:22 +0000 (UTC)
Received: by mail-it0-f49.google.com with SMTP id d10-v6so18895363itj.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 20:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180906224541.27a9c8fe@vmware.local.home>
In-Reply-To: <20180906224541.27a9c8fe@vmware.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 6 Sep 2018 20:43:09 -0700
Message-ID: <CA+55aFx9hKVphfU3+aGONbg_wOx9+Ov6HF3Xkq7ZL_pW5m2CLQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 6, 2018 at 7:45 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Really, the only testing coverage that a patch gets in linux-next is by
> the bots that are run on them. I will agree that the number of bots and
> automated tests are getting better.

I do have to agree with this.

The bots have gone from finding build issues due to configurations to
actually being pretty damn good for many things.

So linux-next test coverage has clearly improved. It finds real issues
(ok, build problems are real issues too, but I think we all agree they
are trivial in comparison), and thanks to having a lot of debug stuff
enabled, testing these days often finds stuff that is core kernel and
triggerable with KASAN or lockdep etc.

It's been very helpful.

But the automated tests are still very limited, particularly when it
comes to hardware issues. Most bot runs tend to be in virtual machines
and/or on a fairly small set of hardware, and usually for a fairly
limited set of loads.

It still does find things, but to just take that list of five stable
regressions that was posted, none of them look like they'd necessarily
have been found by one of the automated boot bots.

And while I think more real people run development kernels with real
loads, I don't think the coverage is *that* good there either. For
example, I tend find one or two major bugs (as in "doesn't boot") kind
of issues that were never found in linux-next pretty much every single
merge window (I consider it a good merge window if I didn't have to
bisect anything).

And _my_ hardware and usage really is pretty damn basic, which should
tell you about how little some of the automated stuff catches.

(Side note: I think it's improving even on the hardware side. I think
the i915 people must be running a _lot_ more testing before pushing to
me, because while GPU issues used to be one of the areas that was one
of the common causes, and it really hasn't been that lately).

And I suspect most people who run development kernels actually end up
running fairly similar hardware (ie "fairly modern workstation" kind
of hardware).

The thing that starts seeing more actual users tends to be the distros
that have "test" versions. At least with Fedora has had a
bleeding-edge rawhide that often has quite recent kernels, and it has
often found things early.

And then there is stable and actual distro users.

And that really is when you find the _much_ wider hardware, and the
odder cases. Sure, the early testing has hopefully found the _core_
problems, but sometimes there are core problems that are simply
triggered by specific hardware patterns or software uses.


> Another issue about having fixes sit in linux-next for some time after
> -rc5, is that by that time, linux-next is filled with new development
> code waiting for the next merge window. A subtle fix for a bug that
> wasn't caught by linux-next in the first place (how else would that bug
> still be around by rc5?) is highly likely not to catch a bug with the
> fix to that subtle bug.

Also note that going into my tree does mean that now linux-next covers
it. So it's not like a patch being accepted should ever make for
_less_ coverage.

If the bug isn't found in the development tree for a week, and ithe
stable people take it, I think we can just all agree that the
automation in  linux-next simply didn't find it.

So the argument that we should delay bug-fixes in order for them to
get more coverage in linux-next seems entirely mis-guided.

Now, if the argument is that people send me stuff that doesn't even
_pretend_ to be a bug-fix, and that this is a problem, then I agree
whole-heartedly with that being a problem. I do occasionally complain
loudly about _that_ problem. It doesn't affect the stable kernels,
perhaps, but it affects the general stability of the development
process.

                Linus
