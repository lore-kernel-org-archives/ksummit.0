Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 751E5AEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 23:21:13 +0000 (UTC)
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C4281200A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 23:21:12 +0000 (UTC)
Received: by mail-ve0-f170.google.com with SMTP id db11so4947603veb.15
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 16:21:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140505205339.GB15815@cloud>
References: <5367D989.1000504@linaro.org> <20140505205339.GB15815@cloud>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 5 May 2014 16:20:51 -0700
Message-ID: <CALCETrVPKEZbkXQ17YjrAevnGooCktqDkATW31Lp1MxSHGtVcg@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 5, 2014 at 1:53 PM,  <josh@joshtriplett.org> wrote:
> On Mon, May 05, 2014 at 11:33:45AM -0700, John Stultz wrote:
>> I'd like to discuss some thoughts on how to address the 2038 issues on
>> 32bit architectures. This is important, as vendors are still producing
>> lots of 32bit hardware, which may very well have 24+ year lifespans
>> (think industrial control applications, security systems).  NetBSD and
>> OpenBSD have recently broken their ABI, converted their time_t to long
>> long, to properly address this. So I'd like to discuss thoughts on how
>> Linux can do similar despite our no-breaking-userspace rules, after all,
>> one way or another (almost) all of Linux's 32bit architectures are
>> terminally broken past 2038.
>
> I would be interested in this, not just because of time_t itself, but as
> a general pattern for "how can we transition away from an old and broken
> ABI".  Whether by introducing new system calls, new personalities,
> seccomp filters, or other mechanisms, we should have some ways to start
> such transitions and to smooth them out.  Sure, we never break
> userspace, but that just means we need an appropriate
> CONFIG_OLD_AND_BUSTED option for as long as people still need the old
> ABI.

I encountered this with CONFIG_COMPAT_VDSO, and it would be nice if
there were a clear, mostly-applicable rule for how this should work.

The current situation is that CONFIG_COMPAT_VDSO's name is silly, and
it's 'default n', but the name is stuck so that old configurations
keep being able to run old software.

--Andy
