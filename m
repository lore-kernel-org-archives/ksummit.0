Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 65C9A912
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:27:23 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D03461F88A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:27:22 +0000 (UTC)
Date: Sun, 17 Aug 2014 22:27:07 -0500
From: Josh Triplett <josh@joshtriplett.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140818032704.GA1268@thin>
References: <20140817002051.GA25397@thin>
 <53F12701.3050500@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53F12701.3050500@zytor.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Unconference session on getting LTO into the
 kernel?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Aug 17, 2014 at 03:04:49PM -0700, H. Peter Anvin wrote:
> On 08/16/2014 05:20 PM, Josh Triplett wrote:
> > There's been a lot of discussion about link-time optimization of the
> > Linux kernel.  However, as of yet the patches have not yet gone in.
> > I've seen objections on the grounds that it increases build time and
> > memory usage, but those objections don't seem like reasons to omit the
> > patches, just reasons to keep LTO optional and disabled by default (and
> > potentially to prevent "allyesconfig" from enabling it).
> > 
> > Anyone interested in a session to hammer out the last details to get the
> > patches merged?
> > 
> > (If this mail ends up prompting discussion that settles this via email,
> > that'd be a fine result too.)
> > 
> 
> Last I heard you still needed a modified toolchain for kernel LTO to
> work.  That is the real killer issue in my mind... if the toolchain
> isn't available to people it is really hard to expect people to not
> cause the code to bitrot.

Looking at the last thread on it, it appears to require gcc 4.8 and
"Linux binutils" 2.21.51.0.3.  I assume the former isn't a problem, and
the latter appears to have been released in 2010.  What's the status of
either getting the necessary changes into GNU binutils or getting the
kernel LTO build to work with GNU binutils?

The comments in Makefile.lto say:
# We need HJ Lu's Linux binutils because mainline binutils does not
# support mixing assembler and LTO code in the same ld -r object.
Which seems like it would only affect a build with CONFIG_LTO_SLIM=n.
Could Makefile.lto allow GNU binutils with CONFIG_LTO_SLIM=y, and only
require the modified binutils with CONFIG_LTO_SLIM=n?

- Josh Triplett
