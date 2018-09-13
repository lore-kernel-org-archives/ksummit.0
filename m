Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 511DAC0C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 19:43:18 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDF14716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 19:43:17 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id n5-v6so2399080otl.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 12:43:17 -0700 (PDT)
MIME-Version: 1.0
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 13 Sep 2018 12:43:15 -0700
Message-ID: <CAPcyv4i=h-7CHpu5ZvXxPsgUOPY-B-wAjX3e5+W9vCm+o081xw@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Ksummit-discuss] [MAINTAINER SUMMIT] EXPORT_SYMBOL_GPL
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Currently the only guidance we have about EXPORT_SYMBOL_GPL usage in
Documentation/ is:

"It implies that the function is considered an internal implementation
issue, and not really an interface."

The topics for a Maintainer Summit discussion are:

1/ The criteria "is considered an internal implementation issue" is
sufficiently vague and seems to lead to arbitrary and subjective
decisions by individual developers. Are there some objective technical
criteria we can apply? For example, the symbol consumes other
EXPORT_SYMBOL_GPL functionality, the symbol can effect kernel-wide
state / policy, or the symbol leaks internal implementation details
that are more unstable than typical EXPORT_SYMBOL apis. Any additional
subjective criteria to consider? For example, it would be better for
long term health of Linux if the consumers of a given API had the
EXPORT_SYMBOL_GPL-related encouragement to get their code upstream.

2/ With expanded criteria in hand the question then becomes what are
the considerations for changing an existing symbol between
EXPORT_SYMBOL or EXPORT_SYMBOL_GPL? I expect it would be awkward and
unwanted to set down hard rules, but a list of considerations that a
change proposal needs to address would at least help guide such
discussions.

Not being a lawyer, I'm less interested in legal concerns, and more
the technical, code maintenance, and health of the kernel aspects of
what EXPORT_SYMBOL_GPL influences.

Note, I am not available to travel to Edinburgh to lead this discussion.
