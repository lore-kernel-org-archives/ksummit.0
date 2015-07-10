Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1402B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:34:17 +0000 (UTC)
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 54207174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:34:17 +0000 (UTC)
Received: by obbkm3 with SMTP id km3so198062233obb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 13:34:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150710154536.6cf0b510@gandalf.local.home>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<20150710154536.6cf0b510@gandalf.local.home>
Date: Fri, 10 Jul 2015 22:34:16 +0200
Message-ID: <CAOesGMhZ=cskPqF6FaMxfdgidYAmDOTRjYThf8aU=PJ4o0KqDg@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 9:45 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Fri, 10 Jul 2015 12:23:28 -0400
> Theodore Ts'o <tytso@mit.edu> wrote:
>
>> I wonder if this might be better done as a panel session during the
>> wider technical session day?
>
> Or both. Have this brought up as a panel session as well as a topic for
> the core day. The panel session (which would come first), could be
> about what types of attacks there could be, and concerns that people
> have, and other general ideas about the topic.
>
> The core day can be about what to do with all the info we got from the
> panel session.

Agreed. I suspect nobody will have anything else than stringent best
practices advice to give in an open forum, while hopefully in a closed
one we might learn a bit about what convenience-vs-security trade-offs
people have done in reality, if any.

Ideal outcome to me from a closed session would be learning how to get
more convenience without sacrificing security, which can probably be
presented widely (open session and/or LWN article, etc). To get there
we might need to hear a bit about what level of convenience people
want.


-Olof
