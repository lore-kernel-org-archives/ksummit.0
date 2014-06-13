Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5DF16B05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:54:15 +0000 (UTC)
Received: from qmta08.emeryville.ca.mail.comcast.net
	(qmta08.emeryville.ca.mail.comcast.net [76.96.30.80])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0A2902026C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:54:14 +0000 (UTC)
Date: Fri, 13 Jun 2014 13:54:13 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20140613182537.GA24180@kroah.com>
Message-ID: <alpine.DEB.2.11.1406131352490.24349@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
	<20140613173041.GA19513@kroah.com>
	<alpine.DEB.2.10.1406131300140.7778@gentwo.org>
	<20140613182537.GA24180@kroah.com>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Fri, 13 Jun 2014, Greg KH wrote:

> > Standardize the kernel APIs for this use case
>
> The UIO interface is being used for this, so all should be good on the
> kernel side, right?

Ok I have seen any vendor use that interface and thus I am not familiar.

> > as well as the user space APIs so that software runs on any of the 3
> > companies stacks.
>
> As these libraries are outside of the kernel tree, there's not much us
> kernel developers can do about this.  Work with those companies to do
> this...

Its not that easy a separation. The mangement functions better be left
with the kernel so that security and permission management work and so
that the device stays in a well known state if accessed from multiple
applications.
