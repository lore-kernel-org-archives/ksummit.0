Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7AE6F957
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:10:36 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B92A254
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:10:35 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1469631987.27356.48.camel@HansenPartnership.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <14136.1469635833.1@warthog.procyon.org.uk>
Date: Wed, 27 Jul 2016 17:10:33 +0100
Message-ID: <14137.1469635833@warthog.procyon.org.uk>
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

>    5. root (uid 0) access: should root be able to modify any keyring?

Currently, it's not even allowed to *see* any key or keyring that it doesn't
have permissions to access.  Note that the permissions system doesn't
distinguish between keyrings and other key types.

David
