Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 720058B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 16:14:37 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3E27618D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 16:14:37 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Hannes Reinecke <hare@suse.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Mon, 26 Oct 2015 16:14:35 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F32B5F530@ORSMSX114.amr.corp.intel.com>
References: <562E37D7.9080105@suse.com>
In-Reply-To: <562E37D7.9080105@suse.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "theodore.tso@gmail.com" <theodore.tso@gmail.com>
Subject: Re: [Ksummit-discuss] Late KS topics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>  (This whole idea came up as we've had some instances which simply
>   could not boot as the serial console took too long to print out
>   all the stuff, so systemd timeout kicked in and killed the udev
>   process which should have handled the boot device.)

What is the default value for that timeout?  Is there a configuration
file where I can easily change it?

I think I may have seen this when I added some verbose debugging
printk() messages.

-Tony
