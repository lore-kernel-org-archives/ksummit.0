Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 458A08E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 19:07:22 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2CD5EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 19:07:21 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.86_2 #1 (Red Hat
	Linux)) id 1bhLTD-0003Jq-SJ
	for ksummit-discuss@lists.linuxfoundation.org;
	Tue, 06 Sep 2016 18:51:43 +0000
Date: Tue, 6 Sep 2016 19:51:43 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20160906185143.GF2356@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Sender: Al Viro <viro@ftp.linux.org.uk>
Subject: [Ksummit-discuss] [topic proposal] tracepoints and ABI stability
	warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

	Right now there is no mechanism for saying "if this tracepoints
breaks, it's Not Our Problem(tm)".  All of them are parts of userland
ABI, potentially casting in stone all kinds of kernel internals.  E.g.
just today a patch series adding tracepoints to kobject primitives
had been posted; if _that_ becomes a part of stable ABI, we get the
lifetime rules for anything with an embedded kobject exposed to userland
and potentially impossible to change - all it takes is a single piece of
software making non-trivial use of those.

	Exposing kernel internals to debugging scripts et.al. is fine,
but only as long as we are promising to keep those scripts working.
Otherwise we end up promising that arseloads of code we can't even see,
sticking its fingers very deep into the kernel internals, will be kept
functional through the kernel changes.  This is absolutely insane, of
course, and I doubt that anybody would be willing to make such promises,
no matter how much value would that add.

	The tracepoints are undiffirentiated mass, with no way for userland
to tell whether it's using something stable or an equivalent of someone's
debugging printks with no promise of stability.  And folks, there *are*
people out there with commit priveleges on assorted userland projects who'd
made it perfectly clear that _any_ kernel interface they find is fair game -
as in "if you didn't want it used, why did you put it in the kernel?".
No matter how much I dislike that bunch for other things, I can't blame them
for being less than upfront regarding that policy.  It had been expressed
very clearly and we'd better take the warning seriously.

	I think this is something that needs to be discussed at KS; IMO we
need at least some way to express the degree of stability promises made
wrt individual tracepoints and some mechanisms for preventing silent creep
towards full stability; something along the lines of "unstable tracepoint $FOO
used by $PROGRAM, kernel tainted", at least.
