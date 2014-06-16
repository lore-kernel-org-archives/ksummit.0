Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1DD62A05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Jun 2014 14:05:35 +0000 (UTC)
Received: from qmta05.emeryville.ca.mail.comcast.net
	(qmta05.emeryville.ca.mail.comcast.net [76.96.30.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 029BA201C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Jun 2014 14:05:33 +0000 (UTC)
Date: Mon, 16 Jun 2014 09:05:31 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
In-Reply-To: <20140616133932.7f8e6bbe@free-electrons.com>
Message-ID: <alpine.DEB.2.11.1406160905030.9480@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
	<20140613173041.GA19513@kroah.com>
	<1402682146.2224.44.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1406131338520.8092@gentwo.org>
	<20140616133932.7f8e6bbe@free-electrons.com>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 16 Jun 2014, Thomas Petazzoni wrote:

> I might be completely out of topic here, but this very much sounds like
> what is happening for graphics. There is a DRM/KMS kernel side, which
> does all the mode setting, context allocation and things like that, and
> then all the rest takes place in userspace, using hardware-specific
> pieces of code in libdrm and other components of the graphics stack.

I thought about that too.

> If we translate that to networking, there would be a need to have all
> of the setup/initialization done in the kernel, and then some
> hardware-specific userspace libraries to use for the data path.

Well ideally these would just be API specific in order to support multiple
devices.
