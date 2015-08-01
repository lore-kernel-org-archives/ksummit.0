Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4B20C40D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 14:41:45 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD254E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 14:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by vena.lwn.net (Postfix) with ESMTP id D07521540049
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 08:41:43 -0600 (MDT)
Date: Sat, 1 Aug 2015 16:41:42 +0200
From: Jonathan Corbet <corbet@lwn.net>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150801164142.653012af@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

As your relatively new documentation subsystem maintainer, I think there
might be reason to talk about docs for a bit at the summit.

Currently, we have two major branches to our docs.  One, the bulk of
Documentation/, is a haphazard collection of text files of varying quality
and applicability to current kernels.  The other is a set of more
organized DocBook documents.

Despite their disorganized nature, the plain-text docs get the bulk of the
attention.  Anybody can manage to work with a text file.  The DocBook
stuff, instead, is kind of a pain.  Working in DocBook itself is less
than fun, few people dare to delve into the code that builds the docs,
and the whole thing is rather fragile.  Changing a struct to a union in
the wireless subsystem a few months back broke the docs build, for
example; few people test for such things and even fewer seem to know how
to fix them.

We have some interesting proposals for improvements on the DocBook side,
including integrating Markdown support
(http://thread.gmane.org/gmane.linux.documentation/32140) and allowing
embedded DocBook comments within structs
(https://lwn.net/Articles/653194/).  I think they both have merit, but I
hesitate to take them for a couple of reasons.

One is that changes in how docs are done would be imposed on everybody who
is interested in keeping up the docs.  They also can, in a sense, look like
coding-style changes, which is an area where I fear to tread on my own.
The other is that I wonder if we want to consider a bit of a more sweeping
overhaul.

I am not convinced that DocBook is really the right tool for the job
here.  It is complex, finicky, and it's a real pain to have to replace an
entire laptop because you've worn out your shift key.  It is, I believe, an
impediment to improvements to our docs in general.  If, instead, we used
something more plain-text-like, I think life might get a lot easier; it
could also enable the integration of all of our docs into something a bit
more cohesive.

Markdown in one of its many forms might be a good alternative here.  I'm
also somewhat attracted by Sphinx, which is designed for documenting code
already and could probably be made to work well with our existing kerneldoc
comments without a whole lot of trouble.  The Sphinx idea, though, is
hobbled by the inconvenient fact that I've not had the time to develop it
far enough to even have a vague idea of whether it would make real-world
sense.

There could, I think, be value in talking about where we would like our
docs subsystem to go.  What kind of changes would we like to make to render
our docs more accessible, more current, and easier to contribute to?  Being
on the hook for a KS section might also motivate me to actually develop my
ideas a bit...

jon
