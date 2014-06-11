Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4F113A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 00:36:12 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C599F2023E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 00:36:11 +0000 (UTC)
Date: Tue, 10 Jun 2014 17:36:06 -0700
From: josh@joshtriplett.org
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140611003606.GA11052@cloud>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53976840.40306@zytor.com>
Cc: boris.ostrovsky@oracle.com, david.vrabel@citrix.com,
	ksummit-discuss@lists.linuxfoundation.org,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
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

On Tue, Jun 10, 2014 at 01:19:12PM -0700, H. Peter Anvin wrote:
> On 06/10/2014 01:12 PM, Konrad Rzeszutek Wilk wrote:
> > Hey,
> > 
> > I would want to propose a topic on removing code in Linux that
> > users are using - but they are doing it less and less and it
> > mostly is tied in with older hardware. Specifically how to do
> > this transition properly - and if we want to define some checklist
> > /policy to do it via.
> > 
> 
> I second this.  Right now deprecation is entirely ad hoc... usually in
> the form "this hasn't compiled for X releases and noone noticed", which
> makes it hard to do *controlled* deprecation...
> 
> I realize this is a third rail kind of topic, but it puts us in really
> hard spots as a project, sometime.

I agree.  I think we've had some recent examples of how to do this
better, with remap_file_pages: old userspace has to *work* on new
kernels, but it doesn't necessarily need to run fast, or integrate with
any new features.  We should deprecate more kernel bits in
favor of minimal compatibility layers, some of which we can associate
with old userspace and drop for new userspace.

- Josh Triplett
