Return-Path: <mwelling79@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35EEA40D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 20:34:09 +0000 (UTC)
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D88779
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 20:34:06 +0000 (UTC)
Received: by igbpg9 with SMTP id pg9so90433960igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 13:34:06 -0700 (PDT)
Received: from deathstar (173-22-240-187.client.mchsi.com. [173.22.240.187])
	by smtp.gmail.com with ESMTPSA id
	lr1sm5918455igb.10.2015.07.20.13.34.05
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Jul 2015 13:34:05 -0700 (PDT)
Sender: Michael Welling <mwelling79@gmail.com>
Date: Mon, 20 Jul 2015 15:33:58 -0500
From: Michael Welling <mwelling@ieee.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150720203358.GA9205@deathstar>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss]  [TECH TOPIC] GPIO API/ABI discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


I propose that there be a discussion as to the future direction
of the GPIO userspace interface.

Here are some topics in need of discussion:
- The continued use of the sysfs interface and possible enhancements
or restructuring.
- The possibility of a char interface and its implications.
- The introduction of gpio groups to userspace.

Here are some links to various discussions on the mailing list:
https://lwn.net/Articles/533632/
https://lwn.net/Articles/651500/
https://lkml.org/lkml/2015/1/5/496
https://www.mail-archive.com/linux-gpio@vger.kernel.org/msg06185.html
