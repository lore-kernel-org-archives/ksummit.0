Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2A843ADD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Jun 2014 20:19:21 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D8ADA20328
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Jun 2014 20:19:20 +0000 (UTC)
Message-ID: <53976840.40306@zytor.com>
Date: Tue, 10 Jun 2014 13:19:12 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20140610201236.GA21729@laptop.dumpdata.com>
In-Reply-To: <20140610201236.GA21729@laptop.dumpdata.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: boris.ostrovsky@oracle.com, david.vrabel@citrix.com
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/10/2014 01:12 PM, Konrad Rzeszutek Wilk wrote:
> Hey,
> 
> I would want to propose a topic on removing code in Linux that
> users are using - but they are doing it less and less and it
> mostly is tied in with older hardware. Specifically how to do
> this transition properly - and if we want to define some checklist
> /policy to do it via.
> 

I second this.  Right now deprecation is entirely ad hoc... usually in
the form "this hasn't compiled for X releases and noone noticed", which
makes it hard to do *controlled* deprecation...

I realize this is a third rail kind of topic, but it puts us in really
hard spots as a project, sometime.

	-hpa
