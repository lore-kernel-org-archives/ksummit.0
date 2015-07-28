Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DDFA0484
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:39:35 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 749408D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:39:35 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1438120439.5441.229.camel@HansenPartnership.com>
References: <1438120439.5441.229.camel@HansenPartnership.com>
	<1438102755.5441.184.camel@HansenPartnership.com>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<29850.1438100240@warthog.procyon.org.uk>
	<31492.1438110696@warthog.procyon.org.uk>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2833.1438123171.1@warthog.procyon.org.uk>
Date: Tue, 28 Jul 2015 23:39:31 +0100
Message-ID: <2834.1438123171@warthog.procyon.org.uk>
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

James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> Um, wouldn't the hash be in the module ... and the module is validated
> at load time by whatever kernel mechanism we're using.

I think we're talking at cross-purposes.  The point was:

    (6) Should module signatures contain the module name - to be matched
        against the modinfo structure after the signature is checked?

I'm asking about whether a *module* signature should be tied to the name of
the *module* it is signing.  Nothing to do with firmware.

David
