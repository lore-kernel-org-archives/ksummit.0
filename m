Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC4DD414
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 01:15:33 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 476671A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 01:15:33 +0000 (UTC)
Date: Thu, 3 Aug 2017 21:15:27 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Shuah Khan <shuahkh@osg.samsung.com>
Message-ID: <20170804011527.l4p2ud6scnaklhhh@thunk.org>
References: <c782a15a-4e73-7373-ca66-5b55e9406059@roeck-us.net>
	<20170705130200.7c653f61@gandalf.local.home>
	<87zibkzgve.fsf@xmission.com>
	<fb399eba-91eb-21a5-e3f5-c3f919061c12@osg.samsung.com>
	<87lgn1nac8.fsf@xmission.com>
	<61093c3f-6ad0-c033-a524-f2624f8d55ba@osg.samsung.com>
	<87r2wtluc1.fsf@xmission.com>
	<92c31d6f-f98d-c764-eeec-bd0a2316d769@osg.samsung.com>
	<20170803030327.gf7pl7foer3abdpe@thunk.org>
	<a313d401-d18b-ed9a-d82d-f6e12f606743@osg.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a313d401-d18b-ed9a-d82d-f6e12f606743@osg.samsung.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>, Shuah Khan <shuah@kernel.org>
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

On Thu, Aug 03, 2017 at 12:51:07PM -0600, Shuah Khan wrote:
> 
> It wasn't my intent to be hostile.

Sorry I wasn't clear; I wasn't saying you were being hostile.  It's
just that I am simultaneously trying to test multiple kernel
cofigurations against a common source tree, and the reason why I use
separate build directories is the alternative is each time I change
configurations, around 2 GB of object files get rewritten.  So a
feature which requires that I give up a workflow such that I would be
I constantly rebuild (and rewrite) gigabytes of object files is
hostile to be my development workflow --- and so unless I hear
testimonials about how it's amazingly useful, I'm highly unlikely to
even experiment with it.

Nothing personal.... it just doesn't fit with my development practices.

Cheers,

					- Ted
