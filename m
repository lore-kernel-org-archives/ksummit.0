Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39B76BCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:38:11 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 92C2D32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 00:38:10 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 10 Jul 2015 03:04:40 +0200
Message-ID: <1723535.JDq69MY9fA@vostro.rjw.lan>
In-Reply-To: <20150710001411.GJ9417@thunk.org>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150709202152.GE1237@dtor-ws> <20150710001411.GJ9417@thunk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>
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

On Thursday, July 09, 2015 08:14:11 PM Theodore Ts'o wrote:
> On Thu, Jul 09, 2015 at 01:21:52PM -0700, Dmitry Torokhov wrote:
> > 
> > No, that is not always true. If I see a naked "reviewed-by" from a
> > person who's been working on the subsystem quite a bit and shown a good
> > judgement it is enough for me. I do not need them to find something to
> > nitpick over so that there is "meat" to the review.
> 
> Absolutely.  If I'm looking at a patch for ext4, and I see a bare
> Reviewed-by: from Jan Kara, I treat that very differently compared to
> a Reviewed-by: coming from someone like Nick Krause.
> 
> The challenge is if we are using a scheme that uses some kind of
> automated counting of Reviewed-by lines, how do we make the system
> smart enough so it counts the former, but not the latter?  Or worse,
> *encourages* more of the latter, which just adds more noise which
> actually increases the load on Maintainers, not decreases.

The Reviewed-by: tags are added to commits by people who ckeck them in,
ie. maintainers.  They should be responsible for using those tags wisely.

If the maintainers exercise enough due dilligence in that area, as they do
with the SoB tags, it actually should be OK to collect and publish Reviewed-by:
statistics too.

> (Which is also my objection to people sending patches generated from
> "checkpatch --file" runs.  Maybe it's fine in for staging code, but
> for other subsystems, it basically just means there are more patches
> that require review by someone clueful --- since sometimes "cleanup"
> patches from trolls actually introduce bugs.)

Or mindless cleanups for that matter.  I completely agree here.

Thanks,
Rafael
