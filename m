Return-Path: <helgaas@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CDDA86067
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:59 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C8A813A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 13:58:59 +0000 (UTC)
Date: Fri, 30 Aug 2019 08:58:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20190830135857.GF7013@google.com>
References: <20190830031720.GA7490@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190830031720.GA7490@mit.edu>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
> ...
> Are there some additional topics that you'd like to suggest that we
> discuss at the maintainer's summit?

I don't have an effective workflow for managing incoming patches.  I
use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
to put patches on topic branches, review them, polish them, merge them
together into a "-next" branch, generate pull requests, etc.

I wish there were a collection of the workflows and scripts people
use, maybe even in the kernel sources so they could be shared and
improved.  Some short screencasts could help visualize and pull things
together.  I know a lot of this stuff is "out there" somewhere, but
I'm not aware of any organized collection.

Bjorn
