Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 912D867FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 11:35:22 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DDBA2466
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 11:35:21 +0000 (UTC)
Date: Sun, 7 Oct 2018 04:35:14 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20181007113514.GA21217@localhost>
References: <20181007085102.17795-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181007085102.17795-1-geert@linux-m68k.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit list
 of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> Providing an explicit list of discrimination factors may give the false
> impression that discrimination based on other unlisted factors would be
> allowed.
> 
> Avoid any ambiguity by removing the list, to ensure "a harassment-free
> experience for everyone", period.

I would suggest reading the commit message that added this in the first
place. "Explicit guidelines have demonstrated success in other projects
and other areas of the kernel." See also various comparisons of codes of
conduct, which make the same point. The point of this list is precisely
to serve as one such explicit guideline; removing it would rather defeat
the purpose.

In any case, this is not the appropriate place for such patches, any
more than it's the place for patches to the GPL.
