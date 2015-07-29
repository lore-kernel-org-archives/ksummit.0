Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFF625A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 16:36:02 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EB1F7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 16:36:02 +0000 (UTC)
Date: Wed, 29 Jul 2015 09:35:51 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150729163549.GA10114@x>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud> <20150728213805.GA8786@kroah.com>
	<1438162660.26913.230.camel@infradead.org>
	<1438182000.2204.35.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1438182000.2204.35.camel@HansenPartnership.com>
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 29, 2015 at 08:00:00AM -0700, James Bottomley wrote:
> You're not out of the woods with this, though: the licence of the
> firmware must permit arbitrary redistribution (and we've seen some that
> don't), so it still has to be released under a freely redistributable
> licence.  And, obviously, there's a greyer area for Linux Specific
> firmware, but the above applies in the general case.
> 
> Distributions, like Debian, which have a definition for what they
> consider to be "free software" may obviously conclude that binary blobs
> don't satisfy that definition and therefore must be confined to the
> non-free part of the distribution.  We can certainly continue to ship
> firmware separately as a courtesy for Debian to prevent the hardship of
> having to banish the whole kernel to non-free

(Or filter out the blobs.)

For the record, this point (that firmware *itself* is not Free Software)
was the only one I meant when I gave "licensing" as a reason to not
compile in firmware.  Feel free to continue the argument about the
legality of a bzImage containing firmware blobs if you like, but that's
not the point I was making.

- Josh triplett
