Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D5E689C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 18:00:25 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 42AA62D1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 18:00:25 +0000 (UTC)
Date: Wed, 3 Aug 2016 21:00:21 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160803203018-mutt-send-email-mst@kernel.org>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<CAPeXnHsOuu_jOkqMMaUwkdfpxUwB=NMwRA4U7jnLG1W2OCdp1g@mail.gmail.com>
	<CALCETrU3E48++g2G-o4YDoazphkcVoK-gVLVHna9ZQoKVgnL5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrU3E48++g2G-o4YDoazphkcVoK-gVLVHna9ZQoKVgnL5g@mail.gmail.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
	trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 10:23:00AM -0700, Andy Lutomirski wrote:
> >>> I don't see a compelling argument for why we'd want to do module hashing at
> >>> all, given that we have to have the signature checking mechanism around anyway
> >>> for various reasons.
> >>
> >> I think that, for the Secure Boot usecase, we actually wouldn't need
> >> the signature checking mechanism at all.  Firmware signature checking
> >> in-kernel is important for some chain-of-trust use cases but AFAIK not
> >> for Secure Boot for standard desktop distros.
> >
> > Without an IOMMU you can probably subvert any DMA capable device that
> > loads unsigned firmware, at which point you're in a bad place again.
> > This isn't something I'm losing much sleep over, since attacks that
> > only work if you have a specific piece of hardware installed are much
> > less exciting. We'd still need signature checking so that users can
> > install their own signing keys, and I don't see distributions being
> > terribly enthusiastic about having two unrelated module validation
> > systems.
> 
> That's a question for the distros.  My intent would be to make the
> module hashing scheme as painless as possible for the distros: distros
> would just enable a config option and, if needed, adjust their debug
> info generation slightly.

It's actually nice not having to rebuild the kernel each time though.
Can the hash-checking code itself be a module (LSM?), such that hash isn't
checked if it's not loaded? One could imagine loading that
e.g. from the initrd.

> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
