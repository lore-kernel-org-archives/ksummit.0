Return-Path: <acme@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2C017AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 14:44:31 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77A4B140
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 14:44:31 +0000 (UTC)
Date: Wed, 12 Jul 2017 11:44:28 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20170712144428.GM27350@kernel.org>
References: <10144.1499863410@warthog.procyon.org.uk>
	<20170712143321.GL27350@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170712143321.GL27350@kernel.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Getting better/supplementary
 error info back to userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, Jul 12, 2017 at 11:33:21AM -0300, Arnaldo Carvalho de Melo escreveu:
> What we do now in tools/perf/ with what we do have now is to have
> strerrno like messages for each class and method (well, we have for some
> of them), like:
> 
>   int perf_evsel__open_strerror(struct perf_evsel *evsel,
>                                 struct target *target,
>                                 int err, char *msg, size_t size);
> 
> where we have a switch to see, from syscall errno return and intended
> target (CPU, system wide, a specific thread, cgroups, etc), who is
> asking this (user, root, etc) and lots of other tunables, how to best
> translate this to the user, formatting it in a string allows us to show
> it in whatever GUI is in use.

To get this clearer in terms of actual usage, here is a (simplified) snippet
for 'perf top':

  try_again:

  	if (perf_evsel__open(event, cpus, threads) < 0) {
		if (perf_evsel__fallback(event, errno, msg, sizeof(msg))) {
			if (verbose > 0)
				ui__warning("%s\n", msg);
				goto try_again;
                        }

		perf_evsel__open_strerror(event, target, errno, msg, sizeof(msg));
		ui__error("%s\n", msg);
		goto out_err;
	}

- Arnaldo
