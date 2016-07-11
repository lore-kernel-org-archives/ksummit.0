Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB04A8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 19:58:52 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C2DC151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 19:58:52 +0000 (UTC)
Received: by mail-oi0-f42.google.com with SMTP id r2so163675361oih.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 12:58:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 11 Jul 2016 12:58:50 -0700
Message-ID: <CAPcyv4ik_wXkSrth33s=rjeQCsbXL1L5mYAhv95Qo_O51tKW2w@mail.gmail.com>
To: Trond Myklebust <trondmy@primarydata.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 10, 2016 at 9:03 PM, Trond Myklebust
<trondmy@primarydata.com> wrote:
> So, we might as well make this a formal proposal.
>
> I=E2=80=99d like to propose that we have a discussion around how to make =
it easier to implement kernel unit tests. I=E2=80=99ve co-opted Dan as he h=
as expressed both an interest and hands-on experience. :-)

Yes, I think there is some benefit to talk about unit test
implementation details.  Also, there are some wider questions, beyond
what I wrote up for LWN [1], that could be productive to discuss in
person:

* Are unit tests strictly out of tree (where tools/testing/ is "out-of-tree=
")?
There's maintenance overhead and code readability concerns if unit
test infrastructure is included in-line.  While it may enable testing
of deep internals, there's significant coverage that can be obtained
by mocking interfaces at the level of exported-symbols.

* What does "we never regress userspace" mean when we have unit tests
that are tightly coupled to the kernel?
For example, there have been occasions where I have "regressed" a test
case to improve kernel behavior with the knowledge that no real
(non-test) application was dependent on the old behavior.

* Are tests only for developers, or should an end consumer of the
kernel expect to be able to run the tests and baseline their kernel?
The unit tests for libnvdimm [2] are meant to run against latest
mainline. There's some support for checking the kernel version, but I
don't promise that tests for new kernel functionality will be skipped
on older kernels without that specific enabling. I'd revisit that
stance if -stable tree maintainers or distros were looking to run the
tests.

[1]: https://lwn.net/Articles/654071/
[2]: https://github.com/pmem/ndctl/tree/master/test
