Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A0B9409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:34:46 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 22C92ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:34:45 +0000 (UTC)
Date: Tue, 28 Jul 2015 21:34:41 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20150728193441.GF30479@wotan.suse.de>
References: <1438102755.5441.184.camel@HansenPartnership.com>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<29850.1438100240@warthog.procyon.org.uk>
	<31492.1438110696@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <31492.1438110696@warthog.procyon.org.uk>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>, mcgrof@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 08:11:36PM +0100, David Howells wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > If we start signing
> > stuff we're not sure should be trusted that explodes the whole model.
> > Therefore, you need to establish two things
> > 
> >      1. What is it that we actually trust?  (I think it's the
> >         transmission path from the firmware supplier, but you haven't
> >         said)

This is the only thing this can help with now, *and* since it comes from there
that it respects obviously linux-firmware license requirements ;)

> I acknowledge this is a tricky point.  Currently, we don't have signatures
> from vendors that we can use.  What we have is blobs either grabbed from
> websites, extracted from Windows installations or provided by the vendor
> directly.  Basically, we cannot trust *anything* we have at the moment.

At least on the 802.11 world I did experience tons of direct vendor involvement
in submitting firmware upstream directly. So this varies by subsystem. I suspect
Nvidia won't participate for their latest GPUs... But fuck 'em anyway right?

> >      2. If we can't validate 1, what do we do
> 
> We need a fallback option.  Possibly one that can be enabled/disabled from the
> kernel command line that allows firmware blobs with signatures set by the
> linux-firmware maintainer indicating this is, to our best knowledge, a valid
> blob.  However, that does raise the issue of how you rescind that indication.

As with module signing I think CONFIG_FIRMWARE_SIG_FORCE=y should only be used
for FW for folks who know who can vet all firmware and want this, the
permissive option you describe I think would be for folks who do not enable
CONFIG_FIRMWARE_SIG_FORCE. There's more to this though, as I'll describe
below.

> > For 2. I think you need to leave stuff you can't validate 1. for
> > unsigned and let system policy decide.  Signing is implying a trust you
> > don't have and thus corrupting the trust model.
> 
> That's a fair point.
> 
> I guess what you want is:
> 
>  (1) A driver can provide a key in some fashion (exact mechanism TBD), then we
>      only permit firmware signed by that key.
> 
>  (2) If driver provides a key but the firmware doesn't have an associated
>      signature, we reject it.

The second set of patches that I have enable this as this criteria is exactly
what I wanted to enable to replace CRDA in userspace. It would also make it
separate from FW signing, so although CONFIG_FIRMWARE_SIG_FORCE=n a driver
can still have a Kconfig option for its own use which may let folks require
or not signing for its driver.

>  (3) A driver can provide a hash of the firmware content and only that exact
>      firmware blob is permitted (or possibly a list of alternative hashes).

The firmware API keeps being abused, my second set of patches make the
firmware API extensible to enable such features if we really want them.

The way to think about it is we'd expose an API to let users use
sysdata_file_request() or sysdata_file_request_async() and on it they'd
pass a const struc sysdata_file_desc (descriptor) which provides all the
requirements. Interally then the kernel sees if it can match it and if so
it tosses the system data file (I call it this now as its not just firmware
we'd be using this for) to the caller.

All sysdata_file_request*() API users would need an OID registered too
so that a key can only be used for that purpose.

>  (4) If a driver doesn't provide a key, we always accept the firmware.
> 
> Which means that someone can use firmware for a driver that falls into
> category (4) as an attack mechanism.  Ideally, I'd like to close (4)
> entirely.  We could instead:
> 
>  (4) If the firmware is signed by the linux-firmware key, we log a warning but
>      accept the firmware.
> 
>  (5) We reject the firmware.

The way I have it now if usres use sysdata_file_request*() APIs then only
the criteria there must be met but if we wanted to piggy back off support
for Kyle's key we can easily do that with a flag, but by default I didn't
support this. ie, if you wanted to trust Kyle's key you'd just use the
old firmware_request() APIs with CONFIG_FIRMWARE_SIG=y, but we can change
this of course.

  Luis
