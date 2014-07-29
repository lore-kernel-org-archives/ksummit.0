Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4450CA59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 15:18:12 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 309C82021A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 15:18:11 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Josh Triplett <josh@joshtriplett.org>, "H. Peter Anvin" <hpa@zytor.com>
Date: Tue, 29 Jul 2014 15:17:40 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F3287CFFB@ORSMSX114.amr.corp.intel.com>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>	<53D69BEC.3030509@zytor.com>
	<alpine.DEB.2.02.1407282214460.2074@localhost6.localdomain6>
	<53D6D44E.1070708@zytor.com> <20140729143513.GB1437@jtriplet-mobl1>
In-Reply-To: <20140729143513.GB1437@jtriplet-mobl1>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Should we force include <linux/err.h> when
 compiling all .c files?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Perhaps, though see above about the handling of new source files.

Sounds like a job for checkpatch.pl to make sure that <linux/err.h>
is included if a new file uses any of  'IS_ERR\|ERR_PTR\|PTR_ERR\|ERR_CAST'
to help stop this spreading to new files.

It might be harder, but presumably still possible, to have it also check if
any use of those macros is added to a file ... but it couldn't tell just by
looking at the patch ... it would have to peek at the original file to see
if there was already a #include <linux/err.h>

Without a check, or some regular scan, this problem is going to recur.

-Tony
