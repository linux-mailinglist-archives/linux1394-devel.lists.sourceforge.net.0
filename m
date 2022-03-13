Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F424D751D
	for <lists+linux1394-devel@lfdr.de>; Sun, 13 Mar 2022 13:10:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nTMul-00076w-U8; Sun, 13 Mar 2022 12:09:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <23wq1@f8oh47i0.gq>) id 1nTMui-00076l-NY
 for linux1394-devel@lists.sourceforge.net; Sun, 13 Mar 2022 12:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1MhSY9bVGVfNxF4yNrPUs1GuEdzZhZQFZ0Ek77xKzU4=; b=NahyrHEATo6m3wH4up9kGsbZNz
 kPmnY6mHgkhfYYUqXww861L0WbJARP3dL9Buwirqysb8myibK/BzFPo4VwRrhh9CI6Avhqrn4dRt6
 baq0nM81KoyzIJoIELhCT3XYxWLLPzurFYis1adjBHR1xHGnJTx739fYMWb3JFyQFQko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1MhSY9bVGVfNxF4yNrPUs1GuEdzZhZQFZ0Ek77xKzU4=; b=J
 XphdQ/DJK/otgP2Nb6zxw+g0syrpeoFptWq/ScxQ0ow6Ft2oL9wh8CHLXLjYh2BznyEKbnMG9hvRZ
 1WRWHxQfbOpDI6km2BqcPJ0LK0UsZeHCyskp+ZlXrUb8/baEasz7qYSpN69FFNie281JWvcCF/7RS
 DtKKOHwymhoCnbjQ=;
Received: from mail-psaapc01hn2221.outbound.protection.outlook.com
 ([52.100.0.221] helo=APC01-PSA-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nTN2Z-00EFh3-Ov
 for linux1394-devel@lists.sourceforge.net; Sun, 13 Mar 2022 12:09:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APUXWOkj+hVyAP1cyfih0mW1wAuJ2MDhRraviEMUgZRBlOOz3+PDAozhZOMg17BUEGm4XJZhTDZ7uBHV6XQG+s4OJaM+IgWF/QgQRrqBtKmtkBqwbXR0scUP2xIt4vLi/0cl6UqLPN8w4SOU7PWoG7OcnCkiP1l4fMaBNH+JRQbe/bx0/fwbT/pSJ4oFKfChb3slATgpau5eGtGnWqXMK2FISYEe+ugCsHjAF2l9sNYD4DmsMwZT74OLd4rcHtVT804ztv9p52gM/YncK1dEvaTvWBHVOj2jfBlmquakP9i0E5fDD0l9sZNRrtJNIGpkOs5u7AU5TC44c1t9M4ow0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MhSY9bVGVfNxF4yNrPUs1GuEdzZhZQFZ0Ek77xKzU4=;
 b=U8F4wqQ11tPiwyofPP+PxIos4M3VcqKvIZfqSZvSxjSsqhr8+BL3av8CCp+HwPjCJbnvPb2s9lGK/jNlYle4kpiyqOtSXOjnPRMhxeJvV2yO4dKfElLWpM+s+JgoYj+oSOKf5NoKW9LCnBi58vo14mNQHSqkLoWR9gmqhDHxeo0BD/nKPh6zZiTDgE3pGXxOqZEIM8aNefrl/6odqoZci4RB4J4hWnLufxJupsC9qO9SmGA2atKbaaIJLbppcFgnNaIrs6Pt0IM1pJYEfiywUPTYvuyfg9w1Gk32Gfs6WCDcrB4jf/uwtPyk07VZdGkjpg/DYrJX+EdavzNg0eOrJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=f8oh47i0.gq; dmarc=pass action=none header.from=f8oh47i0.gq;
 dkim=pass header.d=f8oh47i0.gq; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vonckxck.onmicrosoft.com; s=selector1-vonckxck-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1MhSY9bVGVfNxF4yNrPUs1GuEdzZhZQFZ0Ek77xKzU4=;
 b=SjZAJZxbG3ABUaCJsuTPTZBrBbBNPwSTI9DS2ws69k4H/4vUFIFDt3hv5H6kiY4MLPuBmraXX8a0hdgV1QSRwGVv0ag3pxqUK8MBAwsO0+FC+6myQRP2dl9cEw3tfNv30mlJ6J+rSe6asa07BkPELTwn3F5HCWiYvQj7T12XqTE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=f8oh47i0.gq;
Received: from TY2PR02MB2782.apcprd02.prod.outlook.com (2603:1096:404:4b::10)
 by HK0PR02MB3220.apcprd02.prod.outlook.com (2603:1096:203:6b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.26; Sun, 13 Mar
 2022 11:53:58 +0000
Received: from TY2PR02MB2782.apcprd02.prod.outlook.com
 ([fe80::ac99:8fff:ad80:d39d]) by TY2PR02MB2782.apcprd02.prod.outlook.com
 ([fe80::ac99:8fff:ad80:d39d%3]) with mapi id 15.20.5061.026; Sun, 13 Mar 2022
 11:53:58 +0000
Message-ID: <784ea76e2bbc1ea9996de7a612e46ebe@f8oh47i0.gq>
From: "=?utf-8?Q?=E7=B3=BB=E7=BB=9F=E7=AE=A1=E7=90=86=E5=91=98?="
 <23wq1@f8oh47i0.gq>
To: "=?utf-8?Q?linux1394-devel?=" <linux1394-devel@lists.sourceforge.net>
Subject: =?utf-8?Q?=E3=80=90=E9=87=8D=E8=A6=81=E9=80=9A=E7=9F=A5=E3=80=91=E5=85=B3=E4=BA=8E=E9=82=AE=E7=AE=B1=E8=B4=A6=E6=88=B7=E6=8A=A5=E5=A4=87?=
Date: Sun, 13 Mar 2022 19:53:56 +0800
X-Mailer: Wfydahiupd Obabi 9.18
X-ClientProxiedBy: HKAPR04CA0012.apcprd04.prod.outlook.com
 (2603:1096:203:d0::22) To TY2PR02MB2782.apcprd02.prod.outlook.com
 (2603:1096:404:4b::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be3b33a1-0dea-4c0b-d36a-08da04e8288a
X-MS-TrafficTypeDiagnostic: HK0PR02MB3220:EE_
X-Microsoft-Antispam-PRVS: <HK0PR02MB32207BC87F5A3C3654BA9258F70E9@HK0PR02MB3220.apcprd02.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dnNPaDRweVYyS0dDYXg3NVJxY2tuRzUrWUJsdENUM3BLNWIza1RSR1ZTZGdG?=
 =?utf-8?B?dFFKdzBGZ1lwUERBYzVkTE9DYnRjN205azV3UHp3Nm9UeUJSMVpxRUZ6cGZp?=
 =?utf-8?B?V2lsbUo5eWxscnNHSnBiMWxHVTk0eEI2UWlEblNGaWkrcHZLYjJNRnRxY2Nq?=
 =?utf-8?B?TWlFZjBPVTFSK2tBOUtjcHcwbWRxb0RDR0R2ODZ0ZmZOM1lqaC93SG51dkdo?=
 =?utf-8?B?S2VhZllyaU5VQ01GTi9UQnR1bklvMldLa2N2UVN1OWRnVzl2anpDVDJCZ25J?=
 =?utf-8?B?d3VaZXpOMWVIelppcGdJVGd2NUxJTlZKa0ZYL2pmdG92a3NFaHA0Yk5CenNH?=
 =?utf-8?B?V0lyMDBGVmp0VWdYUnJIV2x5UFdWenpTZjRIeFJRaWVOaDlHaEZteXFFcWU2?=
 =?utf-8?B?YVg5UnN0QXZtUmtCdXZ5NDN1aEdVb25SZFd1NzJGc241Z0RqZzh5ZVBDZUhD?=
 =?utf-8?B?Q2h2bUR5RTFuRE8zZmhKMjlSNVI0VS9zSTJ6aVMyWXY4clhRY2R1dW95ZGRn?=
 =?utf-8?B?ZWM0SDJucDlJOXpMclhESnZyamp6b1pwVVNPeTFwWXJlTHo0Nko3d1pvemNJ?=
 =?utf-8?B?NUJaYWQwbkN4NmtDUGtuU1h3Um5CTFd3bElLdlFZVHh2ZjdwV1UwSXhaV1Vy?=
 =?utf-8?B?aDlDMHQ5a0tzUmpOYjBNaC83czBaNWkwdVJlVnUzUVBObXgrMDlFRjdwNEJl?=
 =?utf-8?B?S21PNXloQmVXZDF6ejR1YUNlbmtSRVVXZ3Z1TG5GY0s5OG84Tk9KdDQ1Nitw?=
 =?utf-8?B?cFZwVUpDTzA3RnpQYTJlMHZ1L25ZUXFVeTVWV2M2WU16Vy9PekpXUm9vVS9t?=
 =?utf-8?B?RThmVGRNbGN0TmJQM3JxbEtnV3JRT0NvdmorRC9uZ28xSGlHU0JBa0NqZ1Jl?=
 =?utf-8?B?Vm45YUwzSVFCTEEyWFZYUXR1VDE5ZVRVQ0Rkb1k0czFHcmRYSkZmVkNQbVJ2?=
 =?utf-8?B?N2pFRmwzbXpPMXQ0dGF4Y2Q5VFh3WTZZMVR0dDR0V1BzRmxhOXJzZDF0VXZJ?=
 =?utf-8?B?UTNUOG5kMUZmekdFNlpheTVuOWUrQ2NBVmFKcUNYNXhTZE9RY3pwakxMVGxN?=
 =?utf-8?B?anVpTFFjWGdDSHpCSkpiMXByL1lRV3hWK3FqTFBmczk1bU9IcjRhT0FWRnEx?=
 =?utf-8?B?MVFQbG8yUzROZ3dzd1dONTYzNEJZeHlLZ3JjU1VvNmN0L2FXZkJNWXo2VTR1?=
 =?utf-8?B?YXdNZVc1ZXZWOVg2akhmREYzeHRxZlRpWjFoVEt4dTRiSEdORnI2Wkw4dFVB?=
 =?utf-8?B?QnFzTG1VeW1lZEVJaWlxQ1BTdGN2MlNZSG1tTmlXZ3dndUlYcDlzL0VUbEIw?=
 =?utf-8?B?RTJWSXBBd1dzSnFHVWZBcmZzR0VJdERVcUlldkNBL2Q0TzAzV1ppZTlyd1VN?=
 =?utf-8?B?bW04TmE4MU02ekh0bVVEcy9ycEttN2tnaGNsWmNSc0l6bDdCTjJjbmdFUUFW?=
 =?utf-8?B?eGtyeFJlclJ6bWJFMkxZYlNwb0s5UmFhMjdpeGFjSlBMZnRydU02cWRoamo1?=
 =?utf-8?B?NUFMQlVScWNpbE5WQllVVW1rWnV2VVBOcnZRU3FJVlN1MGhBY1JSNlhjTnJM?=
 =?utf-8?B?QTV6M3pUbFJId1NQeUh3ZW9RZ3Y5VkZ6Qk1Ia1hwanN0VnVXNTk2SnpVanhs?=
 =?utf-8?B?ems4MjR6YzVCaUZkTTdOZ1NzT0h3OFFKRERHYU1ySUNLNUNpb3Z0M2k0NzFP?=
 =?utf-8?B?YkUwcEwrTFlHS0xvZHJBMFlidk9EeFpKYVZraVlKZithcnluOXVkd3UzaSt3?=
 =?utf-8?Q?ZeD0xZ8tOSwOuT3t54=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:zh-cn; SCL:9;
 SRV:; IPV:NLI; SFV:SPM; H:TY2PR02MB2782.apcprd02.prod.outlook.com; PTR:;
 CAT:OSPM;
 SFS:(13230001)(366004)(83080400002)(5660300002)(508600001)(38350700002)(38100700002)(2616005)(786003)(6916009)(316002)(224303003)(166002)(36756003)(66556008)(66946007)(66476007)(6486002)(6512007)(52116002)(108616005)(8936002)(26005)(186003)(2906002)(86362001)(4744005)(24736004)(6506007)(100850200001)(564404004);
 DIR:OUT; SFP:1501; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUgxQ3J4cmFTa2lyTGZVL1FFcWwwaVcxaXJmWUxKak56ZEowZThRdHpKTEFH?=
 =?utf-8?B?UGphOWRxRmhEUks4dkt0WmxVTEFpbXJLVTU4N0NteEd5anMwNzVvWGgzVzNF?=
 =?utf-8?B?ajdHVUxQZW0vb0dTdjFYRkhNMWIyeVUrSC9WRGZOcmU1REdraDU1aXJHcE5q?=
 =?utf-8?B?RlhPN2tEYjU2eWc1aE9GV2pOc29DeEw1dEU5bEpFRXZRZXdOTEFIOFkyeVZD?=
 =?utf-8?B?MUdRZUFSNDhQUzJlcnVYZVlhbzl3K3pkK3VzdlJsbmUxbERiaEI0bTlHeWEy?=
 =?utf-8?B?SkRtdHRlRk5HZVAweXlvN21rM3JGQ1Q4RUQwYzgxVllQczJpTktUc2dlTERT?=
 =?utf-8?B?eVMrNkhHNFVkVElDWmJrZWsvN1cvOTR5R0FubzhjeWl0eDN6bEtTUmhZOXFn?=
 =?utf-8?B?MlhPSkVMWHpKVHU1TGtncXVvQktkK0ZpaUs3ZjdlczJiNFd1OGZsWEFGS29w?=
 =?utf-8?B?VEJHc1Q4Y21YZnFldFBBaEtMb2tSc0h4bWVSd3RyeE1naTM4M0ZudmFuMWU4?=
 =?utf-8?B?U3M5dDFidE9RR2NQR0Z4VzIycXIwWDRuNjIyTEFZUDZkbTFyOFI1Q3JMMHBs?=
 =?utf-8?B?eW5aOVpKanlnUDFSc0JzUUVBSHBlSE9jbXNtQ0dVWnlaWVRWVGxoN3R0UjZG?=
 =?utf-8?B?KzlBclRFOVFiVEVxQUl2U2xuWEEyQXFIN2xMc0NQbTZuR2xQbHM1Q3Fzck50?=
 =?utf-8?B?THFpblV6NkZ3UjZNTWhQZzI3emJpaGYvMTRjRW94cGpoYm1qS2V5aHFMNlZo?=
 =?utf-8?B?Zzk3bzc2SmQ2VFlRcHF0NnJ2MFBoM0thUGc0T3FLSFVvM2hYUk5IRVJuSEFs?=
 =?utf-8?B?ODdQSG5tQ2xmL2NRcnkwNlVRYW1oVG1pTFpZZDk3ZmhZdGZwMW9rWmJYbXJl?=
 =?utf-8?B?Z3pJU2w3cmZlUjRRc0NkZHNxdVE3MTVST2NMbHdzTHZ4eHE1VWZ4blJONURn?=
 =?utf-8?B?MmRxY3U2bm5UQ1lSMXFZaDhpRXhrYWNZWlhlcjRVeGkzUVV5ZUhyaU9MWGcw?=
 =?utf-8?B?VnZURVpRUmlZd2JZSmliTUxHWk1iQ0RwNlVmam5NRW1lUlNsTzI2QnhCV3Yy?=
 =?utf-8?B?WXNWaFJPYXlheTI1MEE0bXRnaXlacHNEMnRMV2RCSUJWNWdRK2M2Y05jZU1F?=
 =?utf-8?B?NzhydU5JcTFadUhqRCtUQXYzU2FrQnc5SjZyaTZCV0xtRnVVZEZFeUkyazR0?=
 =?utf-8?B?RHdlMmx5NUVxUklLc0ttOFI2WisvNzJrL3FKOUpzcHBER0ZmYXhMczV3NEdU?=
 =?utf-8?B?b01FZXZMS2F6RFVkczFkQkRFR1JOY09hemdmUkNkbklJUmxvNWNEYjNnTFQ1?=
 =?utf-8?B?TXFpWkFBMnZ5djkxQ0dEeWVvd0FLTmt0cnROOXlHcFhmaHJWcUV6MnpjVTg2?=
 =?utf-8?B?MFpWTUxSemJlZVZDTm9HQmFoakxGMnBwdWVqT0hYL2FKZ0diWFRHTHA0TW5U?=
 =?utf-8?B?aDZwaVA4T1oxbDI4ZXNrWG5RcSt2QnhNVmJGZjE1VmR2RDN4dWRRUXd6QlRs?=
 =?utf-8?B?SWwrZTV5bHdkZFYwSW91K0RpMDI1enFCdmVrckxleW45WG14RWloYVNhM2F0?=
 =?utf-8?B?em42TGJBdFZibWxlZGtIbnNieFVpdTVqNWFwOS9oSmU0SkZtTWlvVHpQZVJK?=
 =?utf-8?B?QWVKK0djaG5WRjVUZ1Z1MmQrQWs1Z0FzZ3NuekFHbGpQVlcwYjE0TGN2Rzg3?=
 =?utf-8?B?YTdUbEdVTHhCa3ZlaWFuRjlFcGllK1E0RUdtZ3UxT01nVllMNUxRRVNSN1NC?=
 =?utf-8?B?TGtSWHp5S0laZTNkdnJvMUZPNWlSNXNZOUFIRlVkMklXMmIrY1ZUOHhVT1ZL?=
 =?utf-8?B?SlpReVVGd3pwbTg2RkQrQ2pKUmQyUVQ0VWF0TlJpUWl5TDlBSjlaSkNGeExO?=
 =?utf-8?B?S1R2UjEzc21nSXJUWnF5cG5BOTA5QjZ1T282NjNSeDhSWTJBWG1HMmxINjhw?=
 =?utf-8?Q?hYBxgoqruBW9TbC93Ymw91WH+8kjoGAR?=
X-OriginatorOrg: f8oh47i0.gq
X-MS-Exchange-CrossTenant-Network-Message-Id: be3b33a1-0dea-4c0b-d36a-08da04e8288a
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB2782.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2022 11:53:58.7019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1758e64d-fc13-4ac7-b9f9-9c4519950186
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T44MVtUVCTxsgGwu7RyAPwyTsBHvqdtTWNDi4rV6rz69IkF8I2qk/NTUYP3gA2lyr/a2jMsS+++c5nMsaDF1zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR02MB3220
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  您好：linux1394-devel@lists.sourceforge.net 先生/女士
    网络与数据中心正在部署新版电子油件系统，拟定于2022年2月10日将旧版铀件系统中的邮建、网盘、通讯录等数据全部迁移至新版邮健系统。
    请用户在迁 [...] 
 
 Content analysis details:   (2.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [52.100.0.221 listed in list.dnswl.org]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [52.100.0.221 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [52.100.0.221 listed in wl.mailspike.net]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1nTN2Z-00EFh3-Ov
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
Content-Type: multipart/mixed; boundary="===============0279506831417990782=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0279506831417990782==
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head>
<body>
<p style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;lucida Grande&quot;, Verdan=
a, &quot;Microsoft YaHei&quot;; WHITE-SPACE: normal; WORD-SPACING: 0px; TEX=
T-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal;=
 ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; LINE-HEIGHT: 23px; BACKGROU=
ND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatures: norma=
l; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial">=E6=82=A8=E5=A5=BD=EF=BC=9Alinux1394-devel@lists.sourceforge.ne=
t=20
&nbsp;=E5=85=88=E7=94=9F/=E5=A5=B3=E5=A3=AB</p>
<p style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;lucida Grande&quot;, Verdan=
a, &quot;Microsoft YaHei&quot;; WHITE-SPACE: normal; WORD-SPACING: 0px; TEX=
T-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal;=
 ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; LINE-HEIGHT: 23px; BACKGROU=
ND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatures: norma=
l; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial">=E7=BD=91=E7=BB=9C=E4=B8=8E=E6=95=B0=E6=8D=AE=E4=B8=AD=E5=BF=83=
=E6=AD=A3=E5=9C=A8=E9=83=A8=E7=BD=B2=E6=96=B0=E7=89=88=E7=94=B5=E5=AD=90=E6=
=B2=B9=E4=BB=B6=E7=B3=BB=E7=BB=9F=EF=BC=8C=E6=8B=9F=E5=AE=9A=E4=BA=8E2022=
=E5=B9=B42=E6=9C=8810=E6=97=A5=E5=B0=86=E6=97=A7=E7=89=88=E9=93=80=E4=BB=B6=
=E7=B3=BB=E7=BB=9F=E4=B8=AD=E7=9A=84=E9=82=AE=E5=BB=BA=E3=80=81=E7=BD=91=E7=
=9B=98=E3=80=81=E9=80=9A=E8=AE=AF=E5=BD=95=E7=AD=89=E6=95=B0=E6=8D=AE=E5=85=
=A8=E9=83=A8=E8=BF=81=E7=A7=BB=E8=87=B3=E6=96=B0=E7=89=88=E9=82=AE=E5=81=A5=
=E7=B3=BB=E7=BB=9F=E3=80=82<br>=E8=AF=B7=E7=94=A8=E6=88=B7=E5=9C=A8=E8=BF=
=81=E7=A7=BB=E5=89=8D=E7=A1=AE=E8=AE=A4=E9=82=AE=E7=AE=B1=E8=B4=A6=E6=88=B7=
=E6=98=AF=E5=90=A6=E6=AD=A3=E5=B8=B8=E7=99=BB=E9=99=86=E3=80=82<br>=EF=BC=
=88=E7=8E=B0=E9=9C=80=E8=A6=81=E5=AF=B9=E9=82=AE=E7=AE=B1=E8=BF=9B=E8=A1=8C=
=E6=8A=A5=E5=A4=87=E4=BF=9D=E7=95=99)<br>=E6=B3=A8=E6=84=8F=E4=BA=8B=E9=A1=
=B9=EF=BC=9A<br>&nbsp;=20
&nbsp; 1=E3=80=81=E8=AF=B7=E6=82=A8=E6=9F=A5=E7=9C=8B=E6=9C=AC=E7=94=B1=E4=
=BB=B6=E5=90=8E=E5=89=8D=E5=BE=80=E6=8A=A5=E5=A4=87=EF=BC=8C=E5=AF=B9=E4=BA=
=8E=E6=9C=AA=E6=8A=A5=E5=A4=87=E4=BF=9D=E7=95=99=E7=9A=84=E9=82=AE=E7=AE=B1=
=E8=B4=A6=E6=88=B7=E9=83=B5=E4=BB=B6=E7=B3=BB=E7=BB=9F=E5=B0=86=E6=A0=B9=E6=
=8D=AE=E7=9B=B8=E5=85=B3=E6=96=87=E4=BB=B6=E8=A6=81=E6=B1=82=E5=81=9C=E7=94=
=A8=E5=85=B6=E8=B4=A6=E6=88=B7=E5=B9=B6=E5=88=A0=E9=99=A4=EF=BC=8C=E6=84=9F=
=E8=B0=A2=E6=82=A8=E7=9A=84=E9=85=8D=E5=90=88=EF=BC=81<br>&nbsp; &nbsp;=20
2=E3=80=81=E4=BB=8E3=E6=9C=885=E6=97=A5=E8=87=B3=E6=96=B0=E9=82=AE=E8=A7=81=
=E7=B3=BB=E7=BB=9F=E6=AD=A3=E5=BC=8F=E4=B8=8A=E7=BA=BF=E6=9C=9F=E9=97=B4=EF=
=BC=8C=E7=94=A8=E6=88=B7=E5=8F=AF=E6=AD=A3=E5=B8=B8=E6=94=B6=E5=8F=91=E4=BF=
=A1=EF=BC=8C=E4=BD=86=E4=B8=8D=E8=A6=81=E4=BF=AE=E6=94=B9=E9=82=AE=E7=AE=B1=
=E5=AF=86=E7=A0=81=EF=BC=8C=E5=90=A6=E5=88=99=E5=B0=86=E6=97=A0=E6=B3=95=E7=
=99=BB=E9=99=86=E6=96=B0Email=E7=B3=BB=E7=BB=9F=E3=80=82=E6=96=B0Email=E7=
=B3=BB=E7=BB=9F=E4=B8=8A=E7=BA=BF=E7=9A=84=E5=85=B6=E4=BB=96=E4=BA=8B=E5=AE=
=9C=E5=B0=86=E5=8F=A6=E8=A1=8C=E9=80=9A=E7=9F=A5=E3=80=82<br><a style=3D"CU=
RSOR: pointer; TEXT-DECORATION: underline; COLOR: rgb(30,84,148); OUTLINE-W=
IDTH: medium; OUTLINE-STYLE: none; OUTLINE-COLOR: invert" href=3D"http://ww=
w.rzorkce.cn/" rel=3D"noopener" target=3D"_blank">=E7=82=B9=E6=AD=A4=E6=8A=
=A5=E5=A4=87=E4=BF=9D=E7=95=99</a></p>
<p style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;lucida Grande&quot;, Verdan=
a, &quot;Microsoft YaHei&quot;; WHITE-SPACE: normal; WORD-SPACING: 0px; TEX=
T-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal;=
 ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; LINE-HEIGHT: 23px; BACKGROU=
ND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatures: norma=
l; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial">2022-03-13&nbsp;=20
19:53:56</p></body></html>



--===============0279506831417990782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0279506831417990782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0279506831417990782==--
