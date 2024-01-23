Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA7A838728
	for <lists+linux1394-devel@lfdr.de>; Tue, 23 Jan 2024 07:12:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rSA13-00079L-Sb;
	Tue, 23 Jan 2024 06:12:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rSA12-00079F-Au
 for linux1394-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 06:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qLFNlGsujM8NZeAxQFC+nlpxNJaGSPqEw0MWczAaGV8=; b=M6uzlgP7Lcr4WXF0xwjyNf2gUe
 s/g4K6LsGg0mmu7OxNGcpMRx7NZOKPgxoGoRy7FzrGfz9bqa6bZ/IGY4iNBOjCGbSA5Rm4Xkf19Xb
 fjXDp73hIEKgo+D2LP7TfU2eJsJaaTLcH5oixnwZGQ4W0NHR8URRL5UEg3WLvVoAINHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qLFNlGsujM8NZeAxQFC+nlpxNJaGSPqEw0MWczAaGV8=; b=O
 WYaxuV/ksexT4TCeSMXtxWvoDk1TM0OYsHSLPQ9ezmF1aMc6MVRqYTP4mv8PxktOQ/+dSXq+KluWk
 5l/RcEFdkuSlMj17KxhvwpfCixfQpCJ+1Sn9HkZr1J/2HjRrldZ9wxlbB0oBc/Vx/KhaG6dnd2F2K
 ktW9VPWd1p8Cyobo=;
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rSA0w-0003dw-Fn for linux1394-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 06:12:08 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 3DD831D6FA6
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 01:11:57 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:subject:message-id:mime-version:content-type; s=sasl; bh=HIB
 /13ICAUa52KxtZlmQNgCjSanysApN4P6ZqDQbFvA=; b=a+95hoOWj2AaVtc4bwA
 QW62OUBZMeFQrmZpemeGCTHiH3EIzle2/026LEayvktbrBYNr02PaQ3yELKD8Q5V
 eYjz2dOMv5AhOcT3QbPp7P69BcxshBpkm17NK0zKRTZkgsEe+Pc+k4sS1O00+7ZK
 E5/zSInzQObS7xhGqSGzmy14=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 364B61D6FA5
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 01:11:57 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 9AA941D6FA4
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 01:11:56 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 64835C08DB
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 22 Jan 2024 22:11:55 -0800 (PST)
Date: Mon, 22 Jan 2024 22:11:53 -0800
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Gap count inconsistency causes long delay
Message-ID: <Za9Yl3jlrl0LvA10@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Pobox-Relay-ID: 4FA520A8-B9B6-11EE-A27B-78DCEB2EC81B-07713566!pb-smtp1.pobox.com
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The first time a Sony DSR-25 is powered on after it is
 connected to a Linux PC with a TI XIO2213B based FireWire card, sometimes
 it takes more than 50 seconds before the FireWire bus is usable. A gap [...]
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.1 MONEY_NOHTML           Lots of money in plain text
X-Headers-End: 1rSA0w-0003dw-Fn
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

The first time a Sony DSR-25 is powered on after it is connected to a 
Linux PC with a TI XIO2213B based FireWire card, sometimes it takes more 
than 50 seconds before the FireWire bus is usable. A gap count 
inconsistency occurs and the bus manager is supposed to generate a bus 
reset. However, Linux tries to read the root node's configuration ROM 
before generating a bus reset. The configuration ROM can't be read due 
to the gap count inconsistency. Eventually, Linux gives up trying to 
read the configuration ROM, and then it generates a bus reset which 
resolves the gap count inconsistency.

By skipping the configuration ROM read when there is a gap count 
inconsistency, the 50+ second delay can be eliminated. I will send a 
patch for this today.

Conditions to reproduce this problem:

Tested with a Sony DSR-25 and a SY-PEX30016 PCI Express OHCI card with 
the TI XIO2213B chip.

1. The problem will occur if the device is connected directly to the 
computer. It will also occur if the device is connected through a 
FireWire 800 repeater with a TI chip (tested with PCC-70929 repeater 
cable). It can't be reproduced if the device is connected through a 
FireWire 400 hub.

2. With the DSR-25 powered off, unplug the FireWire cable from the 
DSR-25 and plug it back in.

3. Turn on the DSR-25. A gap count inconsistency will occur the first 
time the DSR-25 is turned on after plugging in the cable. If the DSR-25 
is power cycled again without unplugging the cable, the problem will not 
recur.

Here is a kernel log excerpt. I trimmed it for size.

> [ 8458.584473] IRQ 00000010 AR_req
> [ 8458.585918] IRQ 00810000 selfID cycleInconsistent
> [ 8458.587237] isochronous cycle inconsistent
> [ 8458.588622] AR evt_bus_reset, generation 2
> [ 8458.589975] AR evt_bus_reset, generation 2
> [ 8458.591340] ignoring spurious self IDs
> [ 8458.592707] 2 selfIDs, generation 3, local node ID ffc0
> [ 8458.594086] selfID 0: 807fcc58, phy 0 [--p] beta gc=63 -3W Lc
> [ 8458.595468] selfID 0: 816c08c2, phy 1 [c..] S100 gc=44 +0W Lci

The DSR-25 was powered on. It generated a bus reset. The self-identify 
process was completed. The Linux PC has node ID ffc0, and the DSR-25 has 
node ID ffc1. (The DSR-25's self-ID packet can be recognized because it 
is S100 speed.) The DSR-25 is root node and IRM. The PC has a gap count 
value of 63 and the DSR-25 has a gap count value of 44. This gap count 
inconsistency is called a "Gap Count Error" event in the IEEE 1394 
standard. The cause of the gap count inconsistency will be described 
later. When nodes on a FireWire bus have different gap count values, 
communication will be unreliable. IEEE 1394a-2000 and 1394-2008 require 
the bus manager to correct a gap count error by initiating a bus reset.

> [ 8458.728492] AT spd 0 tl 1c, ffc0 -> ffc1, ack_pending , Lk req, fffff000021c 8,2
> [ 8458.729968] AR spd 0 tl 1c, ffc1 -> ffc0, ack_complete, Lk resp 4,2

The Linux PC attempted to become the bus manager. It succeeded. Now the 
Linux PC is bus manager. The DSR-25 is still the root node and IRM.

> [ 8459.100669] AT spd 0 tl 1d, ffc0 -> ffc1, ack_pending , QR req, fffff0000400
> [ 8459.102255] AR spd 0 tl 1d, ffc1 -> ffc0, ack_complete, QR resp = 04042592
> [ 8459.103880] firewire_core 0000:02:00.0: rediscovered device fw0
> [ 8459.105537] IRQ 00000021 AR_resp AT_req
> [ 8459.107171] AR spd 0 tl 35, ffc1 -> ffc0, ack_complete, QR resp = 31333934
> [ 8459.108804] AT spd 0 tl 35, ffc0 -> ffc1, pending/cancelled, QR req, fffff0000404

The Linux PC has started reading the DSR-25's configuration ROM.

> ...
> [ 8459.204224] AT spd 0 tl 03, ffc0 -> ffc1, ack_pending , QR req, fffff000043c
> [ 8459.206068] IRQ 00000020 AR_resp
> [ 8459.207968] AR spd 0 tl 03, ffc1 -> ffc0, ack_complete, QR resp = 1720000f
> [ 8459.209918] IRQ 00000001 AT_req
> [ 8459.211865] AT spd 0 tl 04, ffc0 -> ffc1, ack_pending , QR req, fffff0000440
> [ 8464.281568] IRQ 00000001 AT_req
> [ 8464.283981] IRQ 00000020 AR_resp
> [ 8464.286279] AT spd 0 tl 05, ffc0 -> ffc1, ack_pending , QR req, fffff0000400
> [ 8464.288562] AR spd 0 tl 05, ffc1 -> ffc0, ack_complete, QR resp = 04042592

We were able to read 400-43c from the config ROM, but reading 440 failed 
due to the gap count inconsistency. After 5 seconds, the read attempt 
timed out. We started another attempt to read the config ROM, starting 
from the beginning at 400.

> ...
> [ 8464.340941] AT spd 0 tl 0c, ffc0 -> ffc1, ack_pending , QR req, fffff000041c
> [ 8464.342942] AR spd 0 tl 0c, ffc1 -> ffc0, ack_complete, QR resp = 8100000a
> [ 8464.345010] IRQ 00000001 AT_req
> [ 8464.347133] AT spd 0 tl 0d, ffc0 -> ffc1, ack_pending , QR req, fffff0000420
> [ 8469.401635] IRQ 00000001 AT_req
> [ 8469.404249] IRQ 00000020 AR_resp
> [ 8469.406740] AT spd 0 tl 0e, ffc0 -> ffc1, ack_pending , QR req, fffff0000400
> [ 8469.409216] AR spd 0 tl 0e, ffc1 -> ffc0, ack_complete, QR resp = 04042592

This time, we were only able to read 400-41c. Reading 420 failed. After 
5 seconds, the read attempt timed out, and we started over at 400 again.

> ...
> [ 8510.986710] AT spd 0 tl 3a, ffc0 -> ffc1, ack_pending , QR req, fffff0000438
> [ 8510.991578] IRQ 00000020 AR_resp
> [ 8510.993368] AR spd 0 tl 3a, ffc1 -> ffc0, ack_complete, QR resp = 13010001
> [ 8510.995134] IRQ 00000001 AT_req
> [ 8510.996927] AT spd 0 tl 3b, ffc0 -> ffc1, ack_pending , QR req, fffff000043c
> [ 8513.018141] firewire_core 0000:02:00.0: giving up on node ffc1: reading config rom failed: timeout

We made a total of 10 attempts to read the config ROM. Each attempt took 
slightly more than 5 seconds. After the tenth attempt, we give up.

> [ 8513.020594] firewire_core 0000:02:00.0: phy config: new root=ffc0, gap_count=5
> [ 8513.022978] IRQ 00000001 AT_req
> [ 8513.025306] AT ack_complete, PHY 00c50000 ff3affff
> [ 8513.027664] IRQ 00000010 AR_req
> [ 8513.030028] IRQ 00010000 selfID
> [ 8513.032270] AR evt_bus_reset, generation 4
> [ 8513.034463] AR evt_bus_reset, generation 4
> [ 8513.036614] 2 selfIDs, generation 5, local node ID ffc1
> [ 8513.038729] selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
> [ 8513.040842] selfID 0: 8145cc5e, phy 1 [--c] beta gc=5 -3W Lci

After giving up on the config ROM read, we finally send a PHY 
configuration packet and a bus reset. This time, both nodes have a gap 
count of 5. The DSR-25 has a node ID of ffc0, and the Linux PC has a 
node ID of ffc1. The Linux PC is the root node and IRM.

> [ 8513.562176] IRQ 00000021 AR_resp AT_req
> [ 8513.564389] AR spd 0 tl 3d, ffc0 -> ffc1, ack_complete, QR resp = 04042592
> [ 8513.566489] AT spd 0 tl 3d, ffc1 -> ffc0, pending/cancelled, QR req, fffff0000400
> ...
> [ 8513.803443] AT spd 0 tl 36, ffc1 -> ffc0, ack_pending , QR req, fffff0000450
> [ 8513.805051] AR spd 0 tl 36, ffc0 -> ffc1, ack_complete, QR resp = 536f6e79
> [ 8513.806916] firewire_core 0000:02:00.0: created device fw1: GUID 08004601025e582a, S100

After the bus reset, the config ROM could be succesfully read. The Linux 
PC recognized the DSR-25. In total, this took 55 seconds!

Because communication is unreliable when the gap count is inconsistent, 
the bus manager should send a bus reset as soon as possible. I modified 
bm_work() to do that. Here is a trimmed kernel log after the change:

> [13093.728598] AR evt_bus_reset, generation 2
> [13093.730467] IRQ 00810000 selfID cycleInconsistent
> [13093.730478] isochronous cycle inconsistent
> [13093.734034] AR evt_bus_reset, generation 2
> [13093.735812] ignoring spurious self IDs
> [13093.737558] 2 selfIDs, generation 3, local node ID ffc0
> [13093.739282] selfID 0: 807fcc58, phy 0 [--p] beta gc=63 -3W Lc
> [13093.741019] selfID 0: 816c08c2, phy 1 [c..] S100 gc=44 +0W Lci

The DSR-25 was powered on. Again, there was a gap count inconsistency.

> [13093.874924] AT spd 0 tl 1c, ffc0 -> ffc1, ack_pending , Lk req, fffff000021c 8,2
> [13093.876624] AR spd 0 tl 1c, ffc1 -> ffc0, ack_complete, Lk resp 4,2

The Linux PC became bus master.

> [13093.878319] firewire_core 0000:02:00.0: phy config: new root=ffc0, gap_count=5
> [13093.880082] IRQ 00000001 AT_req
> [13093.881780] AT ack_complete, PHY 00c50000 ff3affff
> [13093.883461] IRQ 00000010 AR_req
> [13093.885061] AR evt_bus_reset, generation 4
> [13093.886695] IRQ 00010000 selfID
> [13093.888261] AR evt_bus_reset, generation 4
> [13093.889828] 2 selfIDs, generation 5, local node ID ffc1
> [13093.891356] selfID 0: 80450880, phy 0 [p..] S100 gc=5 +0W Lc
> [13093.892900] selfID 0: 8145cc5e, phy 1 [--c] beta gc=5 -3W Lci

After becoming bus master, we sent a PHY configuration packet and bus 
reset immediately. The gap count inconsistency has been corrected.

> [13094.401037] AR spd 0 tl 20, ffc0 -> ffc1, ack_complete, QR resp = 04042592
> [13094.402517] AT spd 0 tl 20, ffc1 -> ffc0, pending/cancelled, QR req, fffff0000400
> ...
> [13094.641750] AT spd 0 tl 19, ffc1 -> ffc0, ack_pending , QR req, fffff0000450
> [13094.643764] IRQ 00000020 AR_resp
> [13094.645718] AR spd 0 tl 19, ffc0 -> ffc1, ack_complete, QR resp = 536f6e79
> [13094.647972] firewire_core 0000:02:00.0: created device fw1: GUID 08004601025e582a, S100

We read the config ROM successfully and recognized the DSR-25. The total 
time was about 1 second.

Another way to deal with a gap count inconsistency would be to delay 
becoming bus master, and give the IRM a chance to reset the bus. 
However, the original IEEE 1394-1995 does not explicitly say how a bus 
manager should react to a gap count error. So, an IRM that is not IEEE 
1394a compliant might never correct the gap count error. For that 
reason, I think it's better that we should become bus master and reset 
the bus.

I considered that if the gap count is inconsistent, a PHY configuration 
packet might not be successful, so it could be desirable to skip the PHY 
configuration packet before the bus reset in this case. However, IEEE 
1394a-2000 and IEEE 1394-2008 say that the bus manager may transmit a 
PHY configuration packet before a bus reset when correcting a gap count 
error. Since the standard endorses this, I decided it's safe to retain 
the PHY configuration packet transmission.

Normally, after a topology change, we will reset the bus a maximum of 5 
times to change the root node and perform gap count optimization. 
However, if there is a gap count inconsistency, we must always generate 
a bus reset. Otherwise the gap count inconsistency will persist and 
communication will be unreliable. For that reason, if there is a gap 
count inconstency, I generate a bus reset even if we already reached the 
5 reset limit.

To understand why the DSR-25 set its gap count to 44, we can look at a 
FireWire bus analyzer trace. I used a Data Transit bus analyzer 
connected to the DSR-25. The Linux PC was not connected for the 
following trace.

> 005 BUS RESET                                                  298.1 MS 
> 006 SELFID PKT0  807F0882  01 ID=00 L=1 GAP=3F SP=100 C=1 I=1  168.7 US 
> 007 SELFID PKT0  7F80F77D  02 PWR=0 P0=PRNT P1=N/P  P2=N/P     0.330 US 
> 008 NODEID RCVD        01     ANALYZER NODE_ID=01              0.750 US 

After the first reset, the DSR-25 started with a gap count of 63, as 
required by the IEEE 1394 standard. The DSR-25 is the IRM, and the bus 
analyzer is the root node.

> 009 SUBACTN GAP                                                11.54 US 
> 010 PHY_CONFIG   00EC0000  01 ROOT ID=00  R=1  T=1  GAP=2C     640.9 MS 
> 011 ASYNC        FF13FFFF  02                                  0.330 US 
> 012 SUBACTN GAP                                                7.710 US 
> 013 BUS RESET                                                  6.465 MS 

According to IEEE 1394, after the self identification process, the IRM 
should wait >=625ms for a bus manager to update the BUS_MANAGER_ID 
register. If this does not happen, there is no bus manager present and 
the IRM is permitted to perform gap count optimization. In this case, 
the DSR-25 waited ~640ms and then set the gap count to 44. This value 
gives better performance than the default value of 63, but is safe with 
an assumed maximum hop count of 16. The DSR-25 does not try to determine 
the actual hop count or round-trip delay.

> 014 NODEID RCVD        00     ANALYZER NODE_ID=00              167.6 US 
> 015 SELFID PKT0  816C08C2  01 ID=01 L=1 GAP=2C SP=100 C=1 I=1  2.280 US 
> 016 SELFID PKT0  7E93F73D  02 PWR=0 P0=CHLD P1=N/P  P2=N/P     0.330 US 

After the bus reset, the DSR-25 has a gap count of 44.

Normally, this sequence of events won't happen with a Linux PC 
connected, because the Linux PC will become bus manager. For testing 
purposes, it's possible to prevent Linux from becoming the bus manager 
or IRM by placing "goto out_put_card;" at the top of bm_work() and 
commenting out "| PHY_CONTENDER" in ohci_enable(). Here is the trimmed 
kernel log:

> [17268.355762] AR evt_bus_reset, generation 7
> [17268.357492] IRQ 00810000 selfID cycleInconsistent
> [17268.357503] isochronous cycle inconsistent
> [17268.360835] AR evt_bus_reset, generation 7
> [17268.362514] ignoring spurious self IDs
> [17268.364173] 2 selfIDs, generation 8, local node ID ffc0
> [17268.365857] selfID 0: 807fc458, phy 0 [--p] beta gc=63 -3W L
> [17268.367548] selfID 0: 816c08c2, phy 1 [c..] S100 gc=44 +0W Lci

The first time the DSR-25 is powered on, there is a gap count 
inconsistency.

> ...
> [17274.340890] AT spd 0 tl 13, ffc0 -> ffc1, ack_pending , QR req, fffff0000450
> [17274.342897] IRQ 00000020 AR_resp
> [17274.344863] AR spd 0 tl 13, ffc1 -> ffc0, ack_complete, QR resp = 536f6e79
> [17274.347108] firewire_core 0000:02:00.0: created device fw1: GUID 08004601025e582a, S100

As IRM, the DSR-25 resets the bus and we successfully read the config 
ROM. We don't care about that, so I omitted most of the log.

Next, I power cycled the DSR-25 without unplugging the FireWire cable.

> [17361.569240] AR evt_bus_reset, generation 12
> [17361.571137] IRQ 00810000 selfID cycleInconsistent
> [17361.571148] isochronous cycle inconsistent
> [17361.574786] AR evt_bus_reset, generation 12
> [17361.576593] 2 selfIDs, generation 13, local node ID ffc0
> [17361.578418] selfID 0: 807fc458, phy 0 [--p] beta gc=63 -3W L
> [17361.580209] selfID 0: 817f08c2, phy 1 [c..] S100 gc=63 +0W Lci

This time, both nodes start out with the correct default gap count of 
63!

> [17362.098623] AT spd 0 tl 1a, ffc0 -> ffc1, ack_pending , QR req, fffff0000400
> [17362.100451] IRQ 00000020 AR_resp
> [17362.102279] firewire_core 0000:02:00.0: rediscovered device fw0
> [17362.104026] AR spd 0 tl 1a, ffc1 -> ffc0, ack_complete, QR resp = 04042592
> ...
> [17362.200874] AT spd 0 tl 3f, ffc0 -> ffc1, ack_pending , QR req, fffff0000438
> [17362.202849] IRQ 00000020 AR_resp
> [17362.204784] AR spd 0 tl 3f, ffc1 -> ffc0, ack_complete, QR resp = 13010001
> [17362.208782] AT spd 0 tl 00, ffc0 -> ffc1, ack_pending , QR req, fffff000043c

We begin reading the config ROM.

> [17362.212683] AR ack_complete, PHY 01ec0000 fe13ffff

About 630ms has passed since the self ID completed, but there is no bus 
manager. As IRM, the DSR-25 sends a PHY configuration packet to change 
the gap count to 44.

> [17362.216780] AR evt_bus_reset, generation 14
> [17362.218694] IRQ 00010000 selfID
> [17362.220582] 2 selfIDs, generation 14, local node ID ffc0
> [17362.222480] selfID 0: 806cc458, phy 0 [--p] beta gc=44 -3W L
> [17362.224341] selfID 0: 816c08c2, phy 1 [c..] S100 gc=44 +0W Lci

We received the DSR-25's PHY configuration packet, so when the DSR-25 
generates a bus reset, all nodes have the same gap count, 44.

> [17367.282795] AR spd 0 tl 01, ffc1 -> ffc0, ack_complete, QR resp = 04042592
> [17367.284639] AT spd 0 tl 01, ffc0 -> ffc1, pending/cancelled, QR req, fffff0000400
> ...
> [17367.539968] AT spd 0 tl 21, ffc0 -> ffc1, ack_pending , QR req, fffff0000450
> [17367.541976] IRQ 00000020 AR_resp
> [17367.543942] AR spd 0 tl 21, ffc1 -> ffc0, ack_complete, QR resp = 536f6e79
> [17367.546191] firewire_core 0000:02:00.0: created device fw1: GUID 08004601025e582a, S100

After the bus reset, we restart the config ROM read, and we successfully 
read the config ROM.

The gap count inconsistency only occurs when the DSR-25 is plugged 
directly into the computer. Since the bus analyzer's second FireWire 
port acts as a FireWire 400 hub, it is not possible to reproduce the 
problem when the DSR-25 is chained to the computer through the analyzer. 
However, it can be reproduced when the DSR-25 is connected to one port 
of the computer's FireWire card and the analyzer is connected to another 
port of the FireWire card. In this configuration, the OHCI chip also 
acts as a FireWire 800 hub. Here is the beginning of the bus analyzer 
trace:

> 000 BUS RESET                                                  0.000 USX
> 001 NODEID RCVD        00     ANALYZER NODE_ID=00              250.9 US 
> 002 SELFID PKT0  817FCC9C  01 ID=01 L=1 GAP=3F SP=800 C=1 I=0  2.680 US 
> 003 SELFID PKT0  7E803363  02 PWR=4 P0=PRNT P1=OFF  P2=CHLD    0.330 US 
> 004 SELFID PKT0  826C08C2  01 ID=02 L=1 GAP=2C SP=100 C=1 I=1  1.600 US 
> 005 SELFID PKT0  7D93F73D  02 PWR=0 P0=CHLD P1=N/P  P2=N/P     0.330 US 

The first activity the analyzer sees is a bus reset and then the self 
IDs with inconsistent gap counts. With the FireWire card acting as hub, 
the analyzer never sees a PHY configuration packet from the DSR-25.

It looks like when the XIO2213B chip is initially connected to a 
FireWire device, its PHY enters a state where it will not receive 
packets. After the link has been established for about 1 second, it will 
begin receiving packets. If the DSR-25 sends a PHY configuration packet 
soon after powering on, the XIO2213B's PHY will not hear this packet. It 
will not obey the configuration command, nor will it send the packet to 
the host or to the XIO2213B's other ports. So, the DSR-25's initial 
attempt to perform gap count optimization as IRM will result in 
inconsistent gap count. Once the XIO2213B begins receiving packets on a 
port, this port will remain able to receive packets until the FireWire 
cable is unplugged.

However, I am not completely certain that this is the correct 
explanation. For example, it might be possible that the XIO2213B is OK 
and the DSR-25 is incorrectly trying to send the PHY configuration 
packet before the link is established.

In any case, by changing bm_work() to immediately generate a bus reset 
when the gap count is inconsistent, the gap count error is resolved and 
the FireWire bus will become usable rapidly.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
