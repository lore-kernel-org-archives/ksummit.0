Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 40237927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 03:20:13 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.225])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9E9E21FC50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 03:20:12 +0000 (UTC)
Date: Mon, 5 May 2014 23:20:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20140505232010.26a67845@gandalf.local.home>
In-Reply-To: <20140505223324.GA5298@kroah.com>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
	<5366FBDB.7090705@huawei.com> <20140505134126.GA22287@thunk.org>
	<20140505223324.GA5298@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, lizf.kern@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 5 May 2014 15:33:24 -0700
Greg KH <greg@kroah.com> wrote:


> And as for announcing it ahead of time, I'm never going to do that
> again, the aftermath was horrid of people putting stuff that shouldn't
> be there.  Heck, when people know about what the enterprise kernels are
> going to be, they throw stuff into upstream "early", so it's a
> well-known pattern and issue.

Perhaps you can announce that 3.X "might" be the LTS tree. And just as
3.X merge window opens, announce that 3.(X-1) is the new LTS tree. It
would be too late to have people pushing "unfinished" code into the LTS.

But, they would still push unfinished code into 3.X, but that is why
you announce it just as (or before) the merge window, so people can say
"oh crap", and then delay their half baked projects to when they are
really ready.

-- Steve
