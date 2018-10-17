Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB82B3300
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 09:13:32 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 44000762
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 09:13:32 +0000 (UTC)
Date: Wed, 17 Oct 2018 02:13:26 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20181017091325.GA15991@localhost>
References: <20181017071902.30102-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181017071902.30102-1-geert@linux-m68k.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org,
	Tomi Valkeinen <tomi.valkeinen@iki.fi>
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

On Wed, Oct 17, 2018 at 09:19:01AM +0200, Geert Uytterhoeven wrote:
> Providing an explicit list of discrimination factors may give the false
> impression that discrimination based on other unlisted factors would be
> allowed.

This impression is, in fact, false, as has already been discussed
elsewhere. I had hoped that discussion would suffice.

As mentioned there: The original commit explicitly said "Explicit
guidelines have demonstrated success in other projects and other areas
of the kernel."; this is precisely the kind of explicit guideline it
refers to. Listing explicit cases to cover does not imply other cases
are not covered; it does, however, ensure that the listed cases *are*,
and helps people know that they're covered.

This patch is not OK, and defeats one of the purposes of the original
change.
