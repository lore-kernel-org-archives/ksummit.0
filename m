Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 29A52282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:14:15 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6EC6175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:14:14 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20150728184730.GA22263@redhat.com>
References: <20150728184730.GA22263@redhat.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<1438096326.26913.180.camel@infradead.org>
To: Peter Jones <pjones@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <31517.1438110849.1@warthog.procyon.org.uk>
Date: Tue, 28 Jul 2015 20:14:09 +0100
Message-ID: <31518.1438110849@warthog.procyon.org.uk>
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org,
	richard@hughsie.com, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Peter Jones <pjones@redhat.com> wrote:

> And even past there - if the firmware update is compliant with NIST
> SP800-147 (which they really all /should/ be, but we know how that
> goes), then the actual blob that gets passed to the firmware still must
> be signed with a key trusted by the firmware.

This is just BIOS updating, right, and not, say, for supplying firmware to my
DVB cards?

Though I suppose the technique might be generally applicable.

David
