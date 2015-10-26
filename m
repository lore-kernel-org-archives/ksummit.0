Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 509018A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 14:45:54 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86D9D168
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Oct 2015 14:45:53 +0000 (UTC)
From: Hannes Reinecke <hare@suse.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <562E37D7.9080105@suse.com>
Date: Mon, 26 Oct 2015 15:25:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: theodore.tso@gmail.com
Subject: [Ksummit-discuss] Late KS topics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(I just realized that I should've sent it to ksummit-discuss, too.
 So here it is.)

Hi Ted,

here are the two things I'd like to bring up:

- Asynchronous probing
  Currently, the driver model has the simple match/probe mechanism by
which individual drivers can attach to device. As per design, these
device are enumerated by the 'bus', and the match/probe pair is
executed for each device. As this is a simple loop, each match/probe
pair is executed sequentially.
This creates quite a significant slowdown on large installations, where
eg. the PCI bus is scanned sequentially, and probe() is called for every
device, although in fact each device is totally independent,
so there isn't really a need for the probe function to be serialized.
I would like to discuss the implications of moving to asynchronous
probing in general, either per bus in with the driver core in general.

The topic will be presented by me an Luis Rodriguez; possible slot would
be 11 or 14.


The other topic is a rather short one, which possibly could be move to
a lightning talk:
- printk usecases
  Currently, printk is used for two largely different usecases:
  1) Really urgent, 'ship me out at any cost now' messages
  and
  2) Rather longish, 'and incidentally I always wanted to tell
  you what I did on my recent holidays' type of logging entries.
  As it so happens, this really makes it hard to do any improvements
  for printk as it inevitably messes up one or the other side.
  (This whole idea came up as we've had some instances which simply
   could not boot as the serial console took too long to print out
   all the stuff, so systemd timeout kicked in and killed the udev
   process which should have handled the boot device.)
  The talk/proposal should be used to come to a consensus about
  restricting printk() to high-priority, small volume messages,
  and implement a different call (like log_printk()) for the
  low-priority, high-volume traffic.

Cheers,

Hannes
