Return-Path: <acme@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7E2396C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 14:33:26 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E841B86
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jul 2017 14:33:25 +0000 (UTC)
Date: Wed, 12 Jul 2017 11:33:21 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20170712143321.GL27350@kernel.org>
References: <10144.1499863410@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10144.1499863410@warthog.procyon.org.uk>
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

Em Wed, Jul 12, 2017 at 01:43:30PM +0100, David Howells escreveu:
> Whilst undertaking a foray into container space and, related to that, looking
> at overhauling the mounting API, it occurred to me that I could make use of
> the mount context (now fs_context) that I was creating to allow the filesystem
> driver to pass supplementary error information back to the userspace program
> that was driving it in the form of textual messages:
> 
> 	int fd = fsopen("ext4");
> 	write(fd, "d /dev/sda2");
> 	write(fd, "o user_xattr");
> 	if (fsmount(fd, "/mnt") == -1) {
> 		/* Something went wrong, read back any error info */
> 		size = read(fd, buffer, sizeof(buffer));
> 		/* Now print the supplementary error message */
> 		fprintf(stderr, "%*.*s\n", size, size, buffer);
> 	}
> 
> This would be particularly useful in the case of mounting a filesystem where
> so many things can go wrong that a small number is insufficient to represent
> them all.  Yes, you have the dmesg log, but that's not necessarily available
> to you and is potentially intermixed with other things.  Further, it's more
> user-friendly if the mount command or your GUI gives you the errors directly.
> 
> However, it occurred to me that this feature might be useful in other cases,
> not just mounting, and there are cases where it's not easy or not possible to
> get the message back to userspace because there's no user-accessible context
> (eg. automounting), or because the context is buried several levels down the
> stack (eg. NFS mount doing a pathwalk).
> 
> In which case, would it make sense to attach such a facility to the
> task_struct instead?  I implemented a test of this using prctl, but a new
> syscall might be a better idea, at least for reading.
> 
>  (*) int old_setting = prctl(PR_ERRMSG_ENABLE, int setting);
> 
>      Enable (setting == 1) or disable (setting == 0) the facility.
>      Disabling the facility clears the error buffer.
> 
>  (*) int size = prctl(PR_ERRMSG_READ, char *buffer, int buf_size);
> 
>      Read back a message and discard it.  

There were discussions about this in the not so distant past, perf being
one of the areas where something like this would help a lot, lemme dig
it, yeah, there is even a short LWN article describing it and with links
to the lkml posts:

  https://lwn.net/Articles/657341/

Involces prctl as yours, etc, etc.

What we do now in tools/perf/ with what we do have now is to have
strerrno like messages for each class and method (well, we have for some
of them), like:

  int perf_evsel__open_strerror(struct perf_evsel *evsel,
                                struct target *target,
                                int err, char *msg, size_t size);

where we have a switch to see, from syscall errno return and intended
target (CPU, system wide, a specific thread, cgroups, etc), who is
asking this (user, root, etc) and lots of other tunables, how to best
translate this to the user, formatting it in a string allows us to show
it in whatever GUI is in use.

- Arnaldo
 
> 
> Anyway, some questions:
> 
>  (1) Is this something that would be of interest on a more global scale?
> 
>      Or should I just stick with stashing it in the fs_context structure and
>      find someway to route around the pathwalk in nfs mount?
> 
>      Or is this totally a bad idea and only dmesg should ever be used?
> 
> If it is of interest globally:
> 
>  (2) How big should I make each task's message buffer?  My current
>      implementation allows each task to hold a single message if enabled.
> 
>  (3) Should I allow warnings in addition to errors?
> 
>  (4) Should I allow wait() and co. to try and retrieve errors from zombies?
> 
>  (5) Should execve() disable the facility?
> 
>  (6) Could all the messages be static (not kmalloc'd) and cleared/redacted by
>      rmmod?  This would potentially prevent the use of formatted messages.
> 
> David
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
