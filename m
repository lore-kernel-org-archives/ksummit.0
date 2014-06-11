Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 713DAA05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:02:11 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C06EF20279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:02:10 +0000 (UTC)
Date: Wed, 11 Jun 2014 13:02:05 -0700
From: josh@joshtriplett.org
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140611200205.GA16477@cloud>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611003606.GA11052@cloud>
	<53987C3C.3080808@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53987C3C.3080808@zytor.com>
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

On Wed, Jun 11, 2014 at 08:56:44AM -0700, H. Peter Anvin wrote:
> On 06/10/2014 05:36 PM, josh@joshtriplett.org wrote:
> > 
> > I agree.  I think we've had some recent examples of how to do this
> > better, with remap_file_pages: old userspace has to *work* on new
> > kernels, but it doesn't necessarily need to run fast, or integrate with
> > any new features.  We should deprecate more kernel bits in
> > favor of minimal compatibility layers, some of which we can associate
> > with old userspace and drop for new userspace.
> > 
> 
> Uhm... that applies only to a fairly restricted aspect of deprecation.
> Much more is tied to specific hardware.

Agreed; hardware support does not have the same degree of compatibility
concerns that userspace interfaces do.

For instance, we could reasonably ask whether we can deprecate support
for ancient filesystems and push that code into FUSE in userspace, given
that most such filesystems only exist for forensics rather than
performance.  That would mitigate potential exploits in that code.

- Josh Triplett
