Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0044183D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:13:00 +0000 (UTC)
Received: from mail-yw0-f178.google.com (mail-yw0-f178.google.com
	[209.85.161.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3443B263
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:12:58 +0000 (UTC)
Received: by mail-yw0-f178.google.com with SMTP id z8so117681156ywa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 08:12:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160729000912.GA17232@wfg-t540p.sh.intel.com>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
	<20160728233327.GC3296@wotan.suse.de>
	<20160729000912.GA17232@wfg-t540p.sh.intel.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Fri, 29 Jul 2016 10:12:37 -0500
Message-ID: <CAErSpo6yOt6L_-rxyLe47MxOgACJ_NkOKiV7kBia1+boUO6K4w@mail.gmail.com>
To: Fengguang Wu <fengguang.wu@intel.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 28, 2016 at 7:09 PM, Fengguang Wu <fengguang.wu@intel.com> wrote:
> On Fri, Jul 29, 2016 at 01:33:27AM +0200, Luis R. Rodriguez wrote:
>>
>> On Fri, Jul 29, 2016 at 07:07:13AM +0800, Fengguang Wu wrote:
>>>
>>> btw, maybe some maintainers are already informed: 0-day statistics
>>> show that ~60% errors can be reported in 2 hours, ~90% errors are
>>> reported in 24 hours and there are 1% errors reported after 1 week.
>>
>>
>> If one were to take 0-day code an slap it on some internal big-iron
>> server, and prioritize work for a few developers (say SUSE would do
>> this for its developers) do you expect the turnaround time for
>> reports would be faster if we had bigger-meaner hardware ? These
>> days actually would like to get results back in a few minutes
>> for 90% of errors so wondering how / if others have taken on
>> 0-day internally and made it faster by beefing up the hardware.
>
>
> I'd suspect roughly the same timing given powerful servers but still
> with reasonable cost considerations.
>
> Intel pretty values the 0-day service and backs it up with 12 parallel
> build servers, including 4 4S Xeon machines. Since we do merged tests,
> one may assume most of the servers are working parallel for his code
> whenever he does a git push. Kernel hackers can feel free to push
> frequently because the extra pushes are virtually cost free -- the
> build workers are working cyclicly on latest merged code anyway.
>
> To take free ride of that restless horse, it'd be good to push small
> topic branches on latest RC kernels, which will have better chances
> to merge and play well with others code.

I'm interested in learning more about how this works.  I typically
base all my topic branches on -rc2 or so, no matter where we are in
the cycle, because it makes it easier to rebuild my "next" branch if I
discover a problem and want to amend something.  But maybe this
consumes more 0-day cycles than necessary.

I second the desire for a web page of status.  Sometimes things seem
to get lost or delayed and I hate to bug Fengguang unnecessarily.

I typically push a topic branch and wait for BUILD_SUCCESS before
merging into my "next" branch.  I do this manually by watching for the
email, but maybe it could be scripted if there were a way to query
"build status for SHA-1".
