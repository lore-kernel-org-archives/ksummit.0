Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EF3E58D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 08:11:16 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D1D7108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 08:11:16 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id f65-v6so12394163itd.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 02 May 2018 01:11:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180501211551.GI2714@sirena.org.uk>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 2 May 2018 10:11:14 +0200
Message-ID: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 1, 2018 at 11:15 PM, Mark Brown <broonie@kernel.org> wrote:
> On Tue, May 01, 2018 at 04:54:48PM -0400, Theodore Y. Ts'o wrote:
>> I do think it's about AUTOSEL, because when I'm dealing with a
>> regression, I want to get it fixed fast.  Because the alternative is
>> the merge-window commit getting reverted.  AUTOSEL seems wants perfect
>> patches that it can cherry pick once, as opposed to a case where if the
>> user confirms that it fixes the regression, I want to send it to Linus
>> quickly.  I do *not* want it to marinate in linux-next for 1-2 weeks.
>> I would much rather that *stable* hold off on picking up the patch for
>> 1-2 weeks, but get it fixed in Linux HEAD sooner.  If that means that
>> the regression fix needs a further clean up, so be it.
>
> We've had issues with the automated testing systems in the past where a
> maintainer has had a policy of letting things percoltate for a week
> before sending to Linus and there's been a bug that caused a substantial
> set of tests to fail to run (generally it's something that had unnoticed
> dependencies in -next so wasn't caught there) - we essentially end up
> not getting the affected bits of test coverage for that period of time
> which is not helpful.

So much agreed. For our CI we carry a constantly rolling set of fixup
patches to keep it working, because regression fixes sometimes take
too long. And too long here for our needs is measured in days/hours -
developers start screaming pretty much immediately when our CI is down
:-)

Ofc I prefer if all subsystems ramp up pre-merge testing as much as
possible (and with xfstests and stuff like that I think filesystems
are leading here, if not consistently). But given the huge scope of
the kernel we'll never reach 100%, and oddball regressions will be
inevitable. Once a regression has crept through it imo really should
get fixed asap, with no unecessary soaking times - get a better
CI/kerneltests in place if you feel like you need to soak stuff.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
