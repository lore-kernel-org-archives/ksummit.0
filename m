Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 58EA7A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 15:57:05 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC4CE2024C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 15:57:04 +0000 (UTC)
Message-ID: <53987C3C.3080808@zytor.com>
Date: Wed, 11 Jun 2014 08:56:44 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: josh@joshtriplett.org
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611003606.GA11052@cloud>
In-Reply-To: <20140611003606.GA11052@cloud>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

On 06/10/2014 05:36 PM, josh@joshtriplett.org wrote:
> 
> I agree.  I think we've had some recent examples of how to do this
> better, with remap_file_pages: old userspace has to *work* on new
> kernels, but it doesn't necessarily need to run fast, or integrate with
> any new features.  We should deprecate more kernel bits in
> favor of minimal compatibility layers, some of which we can associate
> with old userspace and drop for new userspace.
> 

Uhm... that applies only to a fairly restricted aspect of deprecation.
Much more is tied to specific hardware.

	-hpa
