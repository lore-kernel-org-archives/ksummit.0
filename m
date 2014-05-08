Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5F8434C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 18:04:02 +0000 (UTC)
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C6912024D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 18:04:00 +0000 (UTC)
Received: by mail-ig0-f181.google.com with SMTP id h3so109915igd.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 08 May 2014 11:03:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1399552623.17118.22.camel@i7.infradead.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Thu, 8 May 2014 12:03:39 -0600
Message-ID: <CAErSpo4rBTrRrH4+2QRa+EPrQ6fBsOs+UDKxPAuckUZ9dfLykQ@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 8, 2014 at 6:37 AM, David Woodhouse <dwmw2@infradead.org> wrote=
:
> I'd like to have a discussion about handling device errors.
>
> IOMMUs are becoming more common, and we've seen some failure modes where
> we just end up with an endless stream of fault reports from a given
> device, and the kernel can do nothing else.
>
> We may have various options for shutting it up =E2=80=94 a PCI function l=
evel
> reset, power cycling the offending device, or maybe just configuring the
> IOMMU to *ignore* further errors from it, which would at least let the
> system get on with doing something useful (and if we do, when do we
> re-enable reporting?).
>
> But I absolutely don't want us to be implementing policies like that in
> an individual IOMMU driver; this needs to be handled by generic device
> code. Once upon a time I might have said PCI code, but this is actually
> relevant for non-PCI devices too.
>
> I want the IOMMU to report errors, and let the system do the appropriate
> thing. Which requires some discussion about what the "appropriate thing"
> can be in various circumstances, and indeed what options are available
> to us on various platforms.

I'm interested in this discussion, too.
