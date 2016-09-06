Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 959BD6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 22:02:18 +0000 (UTC)
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05C4A16D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 22:02:17 +0000 (UTC)
Received: by mail-lf0-f65.google.com with SMTP id s64so1879349lfs.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 Sep 2016 15:02:17 -0700 (PDT)
Date: Wed, 7 Sep 2016 01:02:13 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160906220213.GA16979@p183.telecom.by>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160906213644.GA16732@p183.telecom.by>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 07, 2016 at 12:36:44AM +0300, Alexey Dobriyan wrote:
> P.S.: techically every kernel release almost certainly breaks crash(1)
> program, program many people on this list should be familiar with.
> It is unclear why rules should be different for tracepoints.

Concrete example:

	TRACE_EVENT(sched_switch,
        TP_STRUCT__entry(
                __array(        char,   prev_comm,      TASK_COMM_LEN   )
                __field(        pid_t,  prev_pid                        )
                __field(        int,    prev_prio                       )
                __field(        long,   prev_state
		^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

struct task_struct::state is long but it looks like a historical
artifact, it can be just int. In this case it is easy to extend value and
preserve compatibility.
