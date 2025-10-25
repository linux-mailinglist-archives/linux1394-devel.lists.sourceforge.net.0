Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26052C0875B
	for <lists+linux1394-devel@lfdr.de>; Sat, 25 Oct 2025 02:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UIGNt6MQxR91uYyWtGeO0bq7Al+YjjtMRzLI6LoGFDE=; b=i3VKvTKUY0nk6eZeFEGvPrAO81
	u/P846pw5D1J+W+x2fZP8gHB3bvFhmWlqlO8XqrwtCaGnxzOKw5mDrImdkMf2deWtDxgZjbemZC9d
	YvLdcywUuGyz6ipskMF8aX8i1cGZlFetPV/3KgognnLeObmuHVDMiIO6t6XBrbc80QvY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vCSQe-0003Ox-UP;
	Sat, 25 Oct 2025 00:46:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vCSQd-0003Oo-Sl
 for linux1394-devel@lists.sourceforge.net;
 Sat, 25 Oct 2025 00:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SFV0pZbv0KPv9MeNrACm33gyVFBL9B+sFcPT2QNEOMY=; b=gL2ZI1C2n/s3aSlc4BZH8P5VHb
 irM/hr+k3AT6Tv5YZ+2o/AQ9uW1x+D2BA49+No+2A8AJiiFD5aMB2syFUeZSVib+GwQLprXl+I/GP
 6xV9Q1XiL8ZEPjElbm2WPMIcHIqQlcw2wioVTWJaBb21+C3ev85kMZQ8NeAuFQeqqoDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SFV0pZbv0KPv9MeNrACm33gyVFBL9B+sFcPT2QNEOMY=; b=LLOzzWWBgeeOf/oYdwklNPNpPD
 g4aZ8tHBEfPWpJgew6WO0RMeOho97fKcVjwy/7QLTQ/dgsNzmvW4mBYh/rB3mq1CyrPFJTA9YPKhP
 TGVdKDX+dT11TFNWtg8fxNX7YCwjCKwMUGFVK/uFyw0Dq+2jwgW9hGx3SV2ZDupjKuyw=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCSQd-0007Fj-LX for linux1394-devel@lists.sourceforge.net;
 Sat, 25 Oct 2025 00:46:44 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.stl.internal (Postfix) with ESMTP id EDC7F1D00192;
 Fri, 24 Oct 2025 20:46:32 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Fri, 24 Oct 2025 20:46:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1761353192; x=
 1761439592; bh=SFV0pZbv0KPv9MeNrACm33gyVFBL9B+sFcPT2QNEOMY=; b=B
 xY1zJIHfvqcHYgIgHfVHrkSUn/4CNsvL7ixiaaBsxOv2bbO+hXOGaZWgJ7Z+1fI+
 OleVg1Ifwk19kh/6eJlmwPG6psSksOsJ3LXDuSB9yAmMJXO6/BfNFggffFLU3RKG
 c1NI7WQdiuPJ6MbSA44HA/DWR+E8OalMdNSDAoATilOGhVC33e75So9Vzp8IbFb3
 uQFkUv2u+0cKjPC7agsdJvKbElNcLYzwnO7o9TlqMHEH7QhIcveg3ITF6qw0WTpX
 64zAODumLldKVZUMUsEFVWBy9d54LLBDr9gh816lri1B/Qtgd7TYpuXQK7b0MRTl
 pWorM+fUns+armKcr7esA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1761353192; x=1761439592; bh=SFV0pZbv0KPv9MeNrACm33gyVFBL9B+sFcP
 T2QNEOMY=; b=PlaIPQVEJFl8KncgNZO/Ro3pC9k+KaJEseYUDQY8sCYeJvY4wGj
 QjMH4sRmkToYKDfDsrwp+LNRelixh0a0rYfrXkOpT0pK5nwMQo7WNU3OIQ45dHpv
 UNq5fQi8J7rSZIKx+N1/Nm0r0GwQS/mt8SoyCC87SSWevToizJl0VoBN3ZjBTifG
 dytknAfg8NtNauZqyysSuF0IZvkstLcfv6NQTX8C914EFRAC9rS04+Xh7nlVxASd
 AgRb/LNaA1vMNJSeE50w5E85buFjFuPN5B8Yejhfjbntb7P++lAdHjz0Jvm67e+u
 wur+gSbvW0UpUPOF0XjszEX6EMB76qmmQIA==
X-ME-Sender: <xms:6B38aHW7wq_EgkcUWIWXFf6Ei-1OAaEH9RohNUo80AT04eaTxF5uQw>
 <xme:6B38aFmOxOghPJJZmTv2G-flGu2iKHJysFD60TSAFXG1fiGifNAhznSN11HpWN4D8
 FhNZlrY20Ak-CAbD7cztkteOfs59cVcrmttz8SjC_wFbxvRVht7Xek>
X-ME-Received: <xmr:6B38aBCI6U9Ec142QlZWbtJzdfIAfsMpioFCgSkg2_Qmy8bpInJqmdq1GVSFLJicyy7bcx8YKKG8KHl4GEsT0z29CILW-WXDYMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduhedtkedvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegouf
 hushhpvggtthffohhmrghinhculdegledmnecujfgurhepfffhvfevuffkfhggtggujges
 thdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqth
 grkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnheptddu
 feevjeeuveektedvjedufeegiefhlefgtddvhfejgefgleejveffudeiudegnecuffhomh
 grihhnpegsuhhffhgvrhdrtggrthdpghhithhhuhgsrdhiohdpthhrrggtvgdqtghmugdr
 ohhrghdpkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdp
 nhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprggurg
 hmghesphhosghogidrtghomhdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghl
 sehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:6B38aNeXR02tFK00gcch9nkh6T-172WXkKfYPRewqikFiMvGiW-pRA>
 <xmx:6B38aEJO4Y9BkxB_-s7N0L3G16YoPF1yA9e3f6EX3jcfldTCtvySmA>
 <xmx:6B38aIeJra1Nvz0hF47eWFg6j-dxG1xbQGc--xMH_jUe6OM0rdvwZQ>
 <xmx:6B38aD2Le5JUtt9ltpqRYubi1TRcbKhS2BITKSDs1Z_dKpq8E77Fpw>
 <xmx:6B38aJ7LnDFXYxuXJJpw8w9CGwG0vhiIfpNSjGiSroWX2fkkPkJcyNuX>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Oct 2025 20:46:31 -0400 (EDT)
Date: Sat, 25 Oct 2025 09:46:29 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH 0/4] firewire: ohci: remove obsolete module-level debug
 parameter
Message-ID: <20251025004629.GC463024@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net
References: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
 <aPh7euUDRQFGeMkz@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aPh7euUDRQFGeMkz@iguana.24-8.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Adam, On Tue, Oct 21, 2025 at 11:36:42PM -0700,
 Adam Goldman
 wrote: > On Thu, Aug 21, 2025 at 09:30:13AM +0900, Takashi Sakamoto wrote:
 > > The "firewire-ohci" module has long provided a "debug" parameter t [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.144 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vCSQd-0007Fj-LX
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Adam,

On Tue, Oct 21, 2025 at 11:36:42PM -0700, Adam Goldman wrote:
> On Thu, Aug 21, 2025 at 09:30:13AM +0900, Takashi Sakamoto wrote:
> > The "firewire-ohci" module has long provided a "debug" parameter that
> > enabled debug logging by calling printk() from hardIRQ context.
> > 
> > Between v6.11 and v6.12, a series of tracepoints events have been added as
> > a more suitable alternative. Since v6.12, a commit cd7023729877
> > ("firewire: ohci: deprecate debug parameter") has already marked the
> > parameter as deprecated.
> > 
> > This series removes the parameter, as its functionality is now fully
> > covered by tracepoints.
> 
> Hi Takashi,
> 
> Now that the "debug" parameter has been removed, can you provide 
> instructions for using tracepoints? For example, what is the new 
> procedure instead of adding "debug=7" to the module command line? What 
> is the equivalent to 
> "echo -1 > /sys/module/firewire_ohci/parameters/debug"?
> 
> -- Adam

In my opinion, using tracepoints means to leave from the message buffer
for printk once. There are several ways to retrieve the content of ring
buffer for tracepoints events in userspace, and we have some userspace
applications to utilize them.

1. By debugfs
2. By file descriptor returned from perf_event_open(2) system call
3. By tracefs
4. By printk message buffer
5. By BPF

For the 1st option, it is required to mount 'debugfs' into anywhere in
your root file system. In my environment:

```
$ mount | grep debugfs
debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
```

Then you can see many directories for events under
'/sys/kernel/debug/tracing/events/'. For the events specific to this
subsystem:

* /sys/kernel/debug/tracing/events/firewire_ohci
  * irq
  * self_id_complete
* /sys/kernel/debug/tracing/events/firewire
  * bus_reset_handle
  * self_id_sequence
  * bus_reset_schedule
  * bus_reset_postpone
  * bus_reset_initiate
  * async_phy_inbound
  * async_phy_outbound_initiate
  * async_phy_outbound_complete
  * etc...

Each of the above directory includes 'enable' file. By writing 1 to the
file, the corresponding event is enabled.

```
$ echo 1 > /sys/kernel/debug/tracing/events/firewire/self_id_sequence/enable
```

The read operation to '/sys/kernel/debug/tracing/trace' retrieves the event
content from the ring buffer.

```
$ cat /sys/kernel/debug/tracing/trace
 irq/121-firewir-73902   [000] ...1. 114132.060856: self_id_sequence: card_index=0 generation=4 phy_id=0x00 link_active=true gap_count=63 scode=3 contender=true power_class=4 initiated_reset=true port_status={0x1,0x1,0x1} self_id_sequence={0x807fcc56}
```

I think this is the most-straightforward way to use the tracepoints
framework. Using cat and shell-builtin echo commands satisfies our aim.


For the 2nd option, perf(1) command would be a good fontend application.
For tracepoints events, 'list', 'record', and 'script' subcommands are
available to enumerate events, record events, and report. In
detail, see https://perfwiki.github.io/main/.


For the 3rd option, trace-cmd(1) would be a good frontend application.
For tracepoints events, 'list', 'record', and 'report' subcommands are
available. In detail, see https://www.trace-cmd.org/.


For the 4th option, we need to use either some kernel command-line options
or corresponding sysctl configurations:
* tp_printk
* trace_event

This way has an advantage at boot time analysis. In detail, see:
* https://docs.kernel.org/admin-guide/kernel-parameters.html


I have never used the 5th option, since it is relatively new,


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
