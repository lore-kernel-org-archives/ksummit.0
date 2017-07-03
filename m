Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B80344A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jul 2017 18:50:44 +0000 (UTC)
Received: from mail-yb0-f169.google.com (mail-yb0-f169.google.com
	[209.85.213.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 229AF248
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jul 2017 18:50:44 +0000 (UTC)
Received: by mail-yb0-f169.google.com with SMTP id e201so57951372ybb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jul 2017 11:50:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170703123025.7479702e@gandalf.local.home>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 3 Jul 2017 11:50:42 -0700
Message-ID: <CAPcyv4gUOs4+cNNGL_VeZms2P5Ypwgu-WknE4kJ0-sRij5y1QQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Linux API <linux-api@vger.kernel.org>,
	Thorsten Leemhuis <linux@leemhuis.info>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 3, 2017 at 9:30 AM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Sun, 2 Jul 2017 19:51:43 +0200
[..]
>>
>> Ugh, pretty long mail. Sorry about that. Maybe I shouldn't have looked
>> so closely into LWN.net articles about regression tracking and older
>> discussions about it.
>
> Anyway, I know that selftests are not the answer for everything, but
> anything that has a way to reproduce a bug should be added to it. Sure,
> it may depend on various hardware and/or file systems and different
> configs, but if we have a central location to place all bug reproducing
> tests (which we do have), then we should utilize it.

I agree with Steven, and I would add that you don't necessarily need
specific hardware to write a test for a driver regression, see
examples in tools/testing/nvdimm. I also tend to think that
back-stopping regressions with new tests helps with the burn-out
problem of tracking regressions. Where building tools and tests is
potentially more fulfilling than just bug tracking.
