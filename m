Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 502578A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 00:23:28 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E9B215C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 00:23:27 +0000 (UTC)
To: "Luck, Tony" <tony.luck@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <562E37D7.9080105@suse.com>
	<3908561D78D1C84285E8C5FCA982C28F32B5F530@ORSMSX114.amr.corp.intel.com>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <562EC3F5.4060300@suse.com>
Date: Tue, 27 Oct 2015 01:23:17 +0100
MIME-Version: 1.0
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F32B5F530@ORSMSX114.amr.corp.intel.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
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

On 10/26/2015 05:14 PM, Luck, Tony wrote:
>>  (This whole idea came up as we've had some instances which simply
>>   could not boot as the serial console took too long to print out
>>   all the stuff, so systemd timeout kicked in and killed the udev
>>   process which should have handled the boot device.)
> 
> What is the default value for that timeout?  Is there a configuration
> file where I can easily change it?
> 
That's the udev worker timeout, which can be modified with later
versions of udev IIRC.

> I think I may have seen this when I added some verbose debugging
> printk() messages.
> 
Oh, that's quite possible. Speaking from painful experience :-)

Cheers,

Hannes
