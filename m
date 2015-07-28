Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0041F282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:42:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8206C138
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:42:40 +0000 (UTC)
Message-ID: <1438101758.5441.169.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Howells <dhowells@redhat.com>
Date: Tue, 28 Jul 2015 09:42:38 -0700
In-Reply-To: <29878.1438100339@warthog.procyon.org.uk>
References: <CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<29878.1438100339@warthog.procyon.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: jkkm@jkkm.org, Luis Rodriguez <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2015-07-28 at 17:18 +0100, David Howells wrote:
> Andy Lutomirski <luto@amacapital.net> wrote:
> 
> > Agreed.  See about.  I don't think the concept of trust should be as
> > simple as "we trust" or "we don't trust" -- we should trust certain
> > vendors for certain purposes only.
> 
> How do you deal with a big vendor, like Intel, that makes lots of different
> bits for lots of different purposes?

I don't understand what you think the problem is?  What's not clear
about "we have to trust the vendor".  If they choose to use a single key
for multiple drivers, it's no more or less a problem than if they choose
multiple keys, one for each driver.

I think the trust we're investing is in the provenance of the blob, not
the blob itself, so the firmware can't be substituted with a malicious
version by an outside entity.  If we don't trust the firmware vendor,
then all bets are off and the provenance chain is pretty meaningless.

James
