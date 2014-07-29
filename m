Return-Path: <hughd@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4171AA4C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 19:06:05 +0000 (UTC)
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D212A2021C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 19:06:02 +0000 (UTC)
Received: by mail-oa0-f54.google.com with SMTP id n16so126848oag.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Jul 2014 12:06:02 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LSU.2.11.1407290938040.4599@eggly.anvils>
References: <22709.1406291979@warthog.procyon.org.uk>
	<20140725232429.GD19618@jtriplet-mobl1>
	<53D69BEC.3030509@zytor.com>
	<alpine.DEB.2.02.1407282214460.2074@localhost6.localdomain6>
	<53D6D44E.1070708@zytor.com> <20140729143513.GB1437@jtriplet-mobl1>
	<3908561D78D1C84285E8C5FCA982C28F3287CFFB@ORSMSX114.amr.corp.intel.com>
	<alpine.LSU.2.11.1407290938040.4599@eggly.anvils>
Date: Tue, 29 Jul 2014 12:06:01 -0700
Message-ID: <CANsGZ6beZ4D6eVT0M4EqoA1xboeTTOUuoEk5SfpCyGX+LUFY8Q@mail.gmail.com>
From: Hugh Dickins <hughd@google.com>
To: "Luck, Tony" <tony.luck@intel.com>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Jul 29, 2014 at 9:50 AM, Hugh Dickins <hughd@google.com> wrote:
> And our response to that is to get the kbuild system to include
> automatically any header files frequently forgotten?

Sorry, that was an initial suggestion which the discussion quickly
moved away from.  But I still don't understand why the inclusion of
linux/err.h is a matter of such interest.  How  best to make sweeping
changes, sure; but why to bother to do so for linux/err.h remains a
mystery to me.

Hugh
