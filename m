Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A830727
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 05:54:56 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 727CB180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 05:54:55 +0000 (UTC)
To: Matthew Wilcox <willy6545@gmail.com>
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
	<CAFhKne8QN1jcATr_xTCWb7Jn-=UoZmsbf4GTDLzM0V=kgWvB3A@mail.gmail.com>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <85e0d92f-628b-8c10-30c3-d8b28b8a1dcf@suse.com>
Date: Mon, 26 Jun 2017 07:54:52 +0200
MIME-Version: 1.0
In-Reply-To: <CAFhKne8QN1jcATr_xTCWb7Jn-=UoZmsbf4GTDLzM0V=kgWvB3A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/25/2017 11:38 PM, Matthew Wilcox wrote:
> Is udev the solution here?
> 
(Top posting; tsk. Probably the new job environment :-)

> Have ->probe do common initialisation and return success. Then udev says
> something to the driver to make it choose one or the other modes.
> 
Which would be option 2 from my proposal.
(And, incidentally, is what zSeries does.)
Plus you essentially spanning off your own bus from the PCI device,
which would solve the PCI binding problem.
But you just delegated the problem one level higher, as you then have to
configure your private bus. So I don't think it solves the underlying
problem, namely how to get the configuration to the driver.

Another problem here is that you rely on udev to do the binding, ie you
have to configure the device first before it can used. Which requires
the use of an initrd, and I'm not sure if everyone can agree to that.

Or come up with a commandline parameter instructing the driver on which
devices to bind.

So it's far from being clear-cut; hence this proposal.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
