Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 22B78486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 22:34:18 +0000 (UTC)
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7AC4E147
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 22:34:15 +0000 (UTC)
Received: by mail-qk0-f173.google.com with SMTP id 16so8415767qkg.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 15:34:15 -0700 (PDT)
Received: from ?IPv6:2601:602:9802:a8dc:1722:8a6b:a66c:79eb?
	([2601:602:9802:a8dc:1722:8a6b:a66c:79eb])
	by smtp.gmail.com with ESMTPSA id r7sm2256942qtb.4.2017.06.21.15.34.12
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Jun 2017 15:34:12 -0700 (PDT)
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
Date: Wed, 21 Jun 2017 15:34:11 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Fedora tends to follow the most recent stable kernel very closely
(e.g. 4.11.6 is currently pending for Fedora 24, 25, and 26).
This works well enough, but there still seem to be some
disconnects in the bug reporting process. Examples I can think of:

- When users report bugs on the Fedora tracker that look like
actual upstream bugs, what's the best way to have those reported?
I typically end up having to summarize from the Fedora bugzilla
and send an e-mail which ends up being tedious. Can we make this
bug reporting easier for non-kernel developers?
- There's still a gap between when bugs hit Linus' tree and when
stable releases come out. This is not a knock against stable or
a request for stable to go faster :). I try
and monitor stable@ for fixes but there still seems to be a
large time gap for identifying fixes that have been fixes in
master that are relevant to a recent stable release.
- Are pictures of kernel panic still the most reliable method
of getting information for early crashes? I keep getting pictures
in 'creative' formats. 


Thanks,
Laura
